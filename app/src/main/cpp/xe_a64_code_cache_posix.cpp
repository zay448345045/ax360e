/**
 ******************************************************************************
 * Xenia : Xbox 360 Emulator Research Project                                 *
 ******************************************************************************
 * Copyright 2020 Ben Vanik. All rights reserved.                             *
 * Released under the BSD license - see LICENSE in the root for more details. *
 ******************************************************************************
 */
#include "xenia/cpu/backend/a64/a64_code_cache.h"
#include "xenia/base/logging.h"
#include "aarch64_disasm.h"
#include <unwind.h>
#include <android/log.h>

extern "C" void __clear_cache(void* start, void* end);
extern "C" void __register_frame(void* eh_frame);
extern "C" void __deregister_frame(void* eh_frame);
extern "C" _Unwind_Reason_Code __gxx_personality_v0(
        int version,
        _Unwind_Action actions,
        uint64_t exceptionClass,
        _Unwind_Exception* exceptionObject,
        _Unwind_Context* context);
enum {
    // Call frame instruction encodings.
    DW_CFA_nop = 0x00,
    DW_CFA_set_loc = 0x01,
    DW_CFA_advance_loc1 = 0x02,
    DW_CFA_advance_loc2 = 0x03,
    DW_CFA_advance_loc4 = 0x04,
    DW_CFA_offset_extended = 0x05,
    DW_CFA_restore_extended = 0x06,
    DW_CFA_undefined = 0x07,
    DW_CFA_same_value = 0x08,
    DW_CFA_register = 0x09,
    DW_CFA_remember_state = 0x0a,
    DW_CFA_restore_state = 0x0b,
    DW_CFA_def_cfa = 0x0c,
    DW_CFA_def_cfa_register = 0x0d,
    DW_CFA_def_cfa_offset = 0x0e,

    DW_CFA_advance_loc = 0x40,
    DW_CFA_offset = 0x80,
    DW_CFA_restore = 0xc0,

    // New in DWARF v3:
    DW_CFA_def_cfa_expression = 0x0f,
    DW_CFA_expression = 0x10,
    DW_CFA_offset_extended_sf = 0x11,
    DW_CFA_def_cfa_sf = 0x12,
    DW_CFA_def_cfa_offset_sf = 0x13,
    DW_CFA_val_offset = 0x14,
    DW_CFA_val_offset_sf = 0x15,
    DW_CFA_val_expression = 0x16,

    // Vendor extensions:
    //    HANDLE_DW_CFA_PRED(0x1d, MIPS_advance_loc8, SELECT_MIPS64)
    //    HANDLE_DW_CFA_PRED(0x2d, GNU_window_save, SELECT_SPARC)
    //    HANDLE_DW_CFA_PRED(0x2d, AARCH64_negate_ra_state, SELECT_AARCH64)
    //    HANDLE_DW_CFA_PRED(0x2e, GNU_args_size, SELECT_X86)
    DW_CFA_MIPS_advance_loc8 = 0x1d,
    DW_CFA_GNU_window_save = 0x2d,
    DW_CFA_AARCH64_negate_ra_state = 0x2d,
    DW_CFA_GNU_args_size = 0x2e,

    // Heterogeneous Debugging Extension defined at
    // https://llvm.org/docs/AMDGPUDwarfExtensionsForHeterogeneousDebugging.html#cfa-definition-instructions
    //    HANDLE_DW_CFA(0x30, LLVM_def_aspace_cfa)
    //    HANDLE_DW_CFA(0x31, LLVM_def_aspace_cfa_sf)
    DW_CFA_LLVM_def_aspace_cfa = 0x30,
    DW_CFA_LLVM_def_aspace_cfa_sf = 0x31,

};

enum {
    // Children flag
    DW_CHILDREN_no = 0x00,
    DW_CHILDREN_yes = 0x01,

    DW_EH_PE_absptr = 0x00,
    DW_EH_PE_omit = 0xff,
    DW_EH_PE_uleb128 = 0x01,
    DW_EH_PE_udata2 = 0x02,
    DW_EH_PE_udata4 = 0x03,
    DW_EH_PE_udata8 = 0x04,
    DW_EH_PE_sleb128 = 0x09,
    DW_EH_PE_sdata2 = 0x0A,
    DW_EH_PE_sdata4 = 0x0B,
    DW_EH_PE_sdata8 = 0x0C,
    DW_EH_PE_signed = 0x08,
    DW_EH_PE_pcrel = 0x10,
    DW_EH_PE_textrel = 0x20,
    DW_EH_PE_datarel = 0x30,
    DW_EH_PE_funcrel = 0x40,
    DW_EH_PE_aligned = 0x50,
    DW_EH_PE_indirect = 0x80
};

#pragma pack(push,1)
struct cie_t{
    uint32_t len;
    uint32_t id;
    uint8_t version; //1 or 3
    uint8_t augmentation[5]; //zPLR\0
    uint8_t code_alignment_factor;
    uint8_t data_alignment_factor;
    uint8_t return_address_register;
    uint8_t augmentation_data_size; //
    uint8_t augmentation_data[3+8];
    uint8_t program[3];
};
static_assert(sizeof(cie_t)==0x1c+4);
static_assert(sizeof(cie_t)%4==0);
struct fde_t{
    uint32_t len;
    uint32_t cie_pointer;
    uint64_t pc_start;
    uint64_t pc_range;
    uint8_t augmentation_data_size;
    uint8_t augmentation_data[4];
    uint8_t program[27];
};

static_assert(sizeof(fde_t)==0x34+4);
static_assert(sizeof(fde_t)%4==0);
struct eh_frame_t{
    cie_t cie;
    fde_t fde;
};
#pragma pack(pop)
#if 0
static _Unwind_Reason_Code trace(struct _Unwind_Context* ctx,void*){
    uint64_t ip=reinterpret_cast<uint64_t>(_Unwind_GetIP(ctx));
    XELOGI("FRAME: {:16X}",ip);
    std::string insts= aarch64_disasm(ip,reinterpret_cast<uint32_t*>(ip),16);
    XELOGI(insts);
    return _URC_NO_REASON;
}
static _Unwind_Reason_Code __jit_personality(
        int version,
        _Unwind_Action actions,
        uint64_t exceptionClass,
        _Unwind_Exception* exceptionObject,
        _Unwind_Context* context){
    if(actions&_UA_CLEANUP_PHASE){
        XELOGI("_UA_CLEANUP_PHASE IPs={:16X}",reinterpret_cast<uint64_t>(_Unwind_GetIP(context)));
        _Unwind_Backtrace(trace,nullptr);
    }
    return __gxx_personality_v0(version,actions,exceptionClass,exceptionObject,context);
}
#endif
static int encode_uleb128(uint8_t* out,uint32_t in){
    uint8_t* p=out;
    int size=0;
    do{
        uint8_t byte=in&0x7f;
        in>>=7;
        if(in!=0) byte|=0x80;
        *p++=byte;
        size++;
    }while(in!=0);
    return size;
}

namespace xe {
    namespace cpu {
        namespace backend {
            namespace a64 {

                class PosixA64CodeCache : public A64CodeCache {
                    std::vector<eh_frame_t> eh_frame_list_;
                    eh_frame_t eh_frame_template_;
                public:
                    PosixA64CodeCache();
                    ~PosixA64CodeCache() override;

                    bool Initialize() override;

                    void* LookupUnwindInfo(uint64_t host_pc) override;

                private:
                    void PlaceCode(uint32_t guest_address, void* machine_code,
                                   const EmitFunctionInfo& func_info,
                                   void* code_execute_address,
                                   UnwindReservation unwind_reservation) override;

                    void InitEhFrameTemplate();
                    void RegisterFDE(void* code_execute_address,const EmitFunctionInfo& func_info);
                };

                std::unique_ptr<A64CodeCache> A64CodeCache::Create() {
                    return std::make_unique<PosixA64CodeCache>();
                }

                PosixA64CodeCache::PosixA64CodeCache() = default;
                PosixA64CodeCache::~PosixA64CodeCache() {
                    for(eh_frame_t& frame:eh_frame_list_){
                        __deregister_frame(&frame.fde);
                    }
                    eh_frame_list_.clear();
                }

                bool PosixA64CodeCache::Initialize() {
                    if (!A64CodeCache::Initialize()) {
                        return false;
                    }
                    InitEhFrameTemplate();
                    eh_frame_list_.reserve(kMaximumFunctionCount);
                    return true;
                }

                void PosixA64CodeCache::InitEhFrameTemplate(){
                    //CIE
                    eh_frame_template_.cie.len=sizeof(cie_t)-4;
                    eh_frame_template_.cie.id=0;
                    eh_frame_template_.cie.version=1;
                    memcpy(eh_frame_template_.cie.augmentation,"zPLR\0",5);
                    eh_frame_template_.cie.code_alignment_factor=1;//ULEB128 1
                    eh_frame_template_.cie.data_alignment_factor=0x78;//SLEB128 -8
                    eh_frame_template_.cie.return_address_register=30;
                    eh_frame_template_.cie.augmentation_data_size=11;
                    eh_frame_template_.cie.augmentation_data[0+0]=DW_EH_PE_absptr|DW_EH_PE_udata8;
                    {
                        //uint64_t p__jit_personality=reinterpret_cast<uint64_t>(__jit_personality);
                        uint64_t p__jit_personality=reinterpret_cast<uint64_t>(__gxx_personality_v0);
                        memcpy(&eh_frame_template_.cie.augmentation_data[0+1],&p__jit_personality,8);
                    }
                    eh_frame_template_.cie.augmentation_data[1+8]=DW_EH_PE_pcrel|DW_EH_PE_sdata4;
                    eh_frame_template_.cie.augmentation_data[2+8]=DW_EH_PE_absptr|DW_EH_PE_udata8;
                    uint8_t cie_program[3]={DW_CFA_def_cfa,31,0};//DW_CFA_def_cfa: reg31(SP) +0
                    memcpy(eh_frame_template_.cie.program,cie_program,3);

                    //FDE
                    eh_frame_template_.fde.len=sizeof(fde_t)-4;
                    eh_frame_template_.fde.cie_pointer=4+eh_frame_template_.cie.len+4;
                    eh_frame_template_.fde.augmentation_data_size=4;
                    memset(eh_frame_template_.fde.augmentation_data,0,4);//LSDA

                    /*
                     * stp x29, x30, [sp, #-0x10]!
                     * mov x29, sp
                     * ...函数体...
                     * mov sp, x29
                     * ldp x29, x30, [sp], #0x10
                     * ret
                     */
                    uint8_t fde_program[27]={
                            DW_CFA_def_cfa,31,0,
                            DW_CFA_advance_loc|4 ,
                            DW_CFA_def_cfa_offset ,16,
                            DW_CFA_offset|29,2,
                            DW_CFA_offset|30,1,
                            DW_CFA_advance_loc|4 ,
                            DW_CFA_def_cfa_register,29,
                            DW_CFA_advance_loc4 ,0,0,0,0,//
                            DW_CFA_advance_loc|4 ,
                            DW_CFA_def_cfa_register,31,
                            DW_CFA_advance_loc|4,
                            DW_CFA_def_cfa_offset,0,
                            DW_CFA_restore|29,
                            DW_CFA_restore|30,
                            DW_CFA_nop,
                    };

                    static_assert(sizeof(eh_frame_template_.fde.program)==sizeof(fde_program));
                    memcpy(eh_frame_template_.fde.program,fde_program,sizeof(fde_program));
                }
                void PosixA64CodeCache::RegisterFDE(void* code_execute_address,const EmitFunctionInfo& func_info){
                    eh_frame_list_.push_back({});
                    eh_frame_t& frame=eh_frame_list_.back();
                    memcpy(&frame,&eh_frame_template_,sizeof(eh_frame_t));

                    frame.fde.pc_start=reinterpret_cast<uint64_t>(code_execute_address);
                    frame.fde.pc_range=func_info.code_size.total;

                    uint32_t loc4=func_info.code_size.total-5*4;
                    memcpy(frame.fde.program+14,&loc4,4);
                    __register_frame(&frame.fde);
                }

                void PosixA64CodeCache::PlaceCode(uint32_t guest_address, void* machine_code,
                                       const EmitFunctionInfo& func_info,
                                       void* code_execute_address,
                               UnwindReservation unwind_reservation){

                    RegisterFDE(code_execute_address,func_info);
                    assert_false(eh_frame_list_.size() >= kMaximumFunctionCount);

                    uint32_t* ec=reinterpret_cast<uint32_t*>(code_execute_address);
                    //XELOGI("ASM:\n{}", aarch64_disasm(reinterpret_cast<uint64_t>(code_execute_address),ec,func_info.code_size.total/4));

                    __clear_cache(code_execute_address, reinterpret_cast<uint8_t*>(code_execute_address)+func_info.code_size.total);
                }

                void* PosixA64CodeCache::LookupUnwindInfo(uint64_t host_pc) {
                    return nullptr;
                }

            }
        }
    }
}