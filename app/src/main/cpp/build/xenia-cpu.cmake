add_library("xenia-cpu" STATIC
  "xenia/src/xenia/cpu/backend/assembler.cc"
  "xenia/src/xenia/cpu/backend/assembler.h"
  "xenia/src/xenia/cpu/backend/backend.cc"
  "xenia/src/xenia/cpu/backend/backend.h"
  "xenia/src/xenia/cpu/backend/code_cache.h"
  "xenia/src/xenia/cpu/backend/machine_info.h"
  "xenia/src/xenia/cpu/backend/null_backend.cc"
  "xenia/src/xenia/cpu/backend/null_backend.h"
"xenia/src/xenia/cpu/breakpoint.cc"
"xenia/src/xenia/cpu/breakpoint.h"
  "xenia/src/xenia/cpu/compiler/compiler.cc"
  "xenia/src/xenia/cpu/compiler/compiler.h"
  "xenia/src/xenia/cpu/compiler/compiler_pass.cc"
  "xenia/src/xenia/cpu/compiler/compiler_pass.h"
  "xenia/src/xenia/cpu/compiler/compiler_passes.h"
    "xenia/src/xenia/cpu/compiler/passes/conditional_group_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/conditional_group_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/conditional_group_subpass.cc"
    "xenia/src/xenia/cpu/compiler/passes/conditional_group_subpass.h"
    "xenia/src/xenia/cpu/compiler/passes/constant_propagation_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/constant_propagation_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/context_promotion_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/context_promotion_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/control_flow_analysis_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/control_flow_analysis_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/control_flow_simplification_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/control_flow_simplification_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/data_flow_analysis_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/data_flow_analysis_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/dead_code_elimination_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/dead_code_elimination_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/finalization_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/finalization_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/memory_sequence_combination_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/memory_sequence_combination_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/register_allocation_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/register_allocation_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/simplification_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/simplification_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/validation_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/validation_pass.h"
    "xenia/src/xenia/cpu/compiler/passes/value_reduction_pass.cc"
    "xenia/src/xenia/cpu/compiler/passes/value_reduction_pass.h"
"xenia/src/xenia/cpu/cpu_flags.cc"
"xenia/src/xenia/cpu/cpu_flags.h"
"xenia/src/xenia/cpu/debug_listener.h"
"xenia/src/xenia/cpu/elf_module.cc"
"xenia/src/xenia/cpu/elf_module.h"
"xenia/src/xenia/cpu/entry_table.cc"
"xenia/src/xenia/cpu/entry_table.h"
"xenia/src/xenia/cpu/export_resolver.cc"
"xenia/src/xenia/cpu/export_resolver.h"
"xenia/src/xenia/cpu/function.cc"
"xenia/src/xenia/cpu/function.h"
"xenia/src/xenia/cpu/function_debug_info.cc"
"xenia/src/xenia/cpu/function_debug_info.h"
"xenia/src/xenia/cpu/function_trace_data.h"
  "xenia/src/xenia/cpu/hir/block.cc"
  "xenia/src/xenia/cpu/hir/block.h"
  "xenia/src/xenia/cpu/hir/hir_builder.cc"
  "xenia/src/xenia/cpu/hir/hir_builder.h"
  "xenia/src/xenia/cpu/hir/instr.cc"
  "xenia/src/xenia/cpu/hir/instr.h"
  "xenia/src/xenia/cpu/hir/label.h"
  "xenia/src/xenia/cpu/hir/opcodes.cc"
  "xenia/src/xenia/cpu/hir/opcodes.h"
  "xenia/src/xenia/cpu/hir/value.cc"
  "xenia/src/xenia/cpu/hir/value.h"
"xenia/src/xenia/cpu/lzx.cc"
"xenia/src/xenia/cpu/lzx.h"
"xenia/src/xenia/cpu/mmio_handler.cc"
"xenia/src/xenia/cpu/mmio_handler.h"
"xenia/src/xenia/cpu/module.cc"
"xenia/src/xenia/cpu/module.h"
  "xenia/src/xenia/cpu/ppc/ppc_context.cc"
  "xenia/src/xenia/cpu/ppc/ppc_context.h"
  "xenia/src/xenia/cpu/ppc/ppc_decode_data.h"
  "xenia/src/xenia/cpu/ppc/ppc_emit-private.h"
  "xenia/src/xenia/cpu/ppc/ppc_emit.h"
  "xenia/src/xenia/cpu/ppc/ppc_emit_altivec.cc"
  "xenia/src/xenia/cpu/ppc/ppc_emit_alu.cc"
  "xenia/src/xenia/cpu/ppc/ppc_emit_control.cc"
  "xenia/src/xenia/cpu/ppc/ppc_emit_fpu.cc"
  "xenia/src/xenia/cpu/ppc/ppc_emit_memory.cc"
  "xenia/src/xenia/cpu/ppc/ppc_frontend.cc"
  "xenia/src/xenia/cpu/ppc/ppc_frontend.h"
  "xenia/src/xenia/cpu/ppc/ppc_hir_builder.cc"
  "xenia/src/xenia/cpu/ppc/ppc_hir_builder.h"
  "xenia/src/xenia/cpu/ppc/ppc_instr.h"
  "xenia/src/xenia/cpu/ppc/ppc_opcode.h"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_disasm.cc"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_disasm.h"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_disasm_gen.cc"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_info.cc"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_info.h"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_lookup_gen.cc"
  "xenia/src/xenia/cpu/ppc/ppc_opcode_table_gen.cc"
  "xenia/src/xenia/cpu/ppc/ppc_scanner.cc"
  "xenia/src/xenia/cpu/ppc/ppc_scanner.h"
  "xenia/src/xenia/cpu/ppc/ppc_translator.cc"
  "xenia/src/xenia/cpu/ppc/ppc_translator.h"
"xenia/src/xenia/cpu/processor.cc"
"xenia/src/xenia/cpu/processor.h"
"xenia/src/xenia/cpu/raw_module.cc"
"xenia/src/xenia/cpu/raw_module.h"
"xenia/src/xenia/cpu/stack_walker.h"
"xenia/src/xenia/cpu/stack_walker_posix.cc"
"xenia/src/xenia/cpu/symbol.h"
"xenia/src/xenia/cpu/test_module.cc"
"xenia/src/xenia/cpu/test_module.h"
"xenia/src/xenia/cpu/thread.cc"
"xenia/src/xenia/cpu/thread.h"
"xenia/src/xenia/cpu/thread_debug_info.h"
"xenia/src/xenia/cpu/thread_state.cc"
"xenia/src/xenia/cpu/thread_state.h"
"xenia/src/xenia/cpu/xex_module.cc"
"xenia/src/xenia/cpu/xex_module.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-cpu"
    "xenia-base"
    "mspack"
  )
  set_target_properties("xenia-cpu" PROPERTIES
    OUTPUT_NAME "xenia-cpu"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-cpu" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/llvm/include
  )
  target_compile_definitions("xenia-cpu" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-cpu"
    xenia-base
    mspack
    android
    dl
    log
  )
  target_compile_options("xenia-cpu" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-cpu" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-cpu"
    "xenia-base"
    "mspack"
  )
  set_target_properties("xenia-cpu" PROPERTIES
    OUTPUT_NAME "xenia-cpu"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-cpu" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/llvm/include
  )
  target_compile_definitions("xenia-cpu" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-cpu"
    xenia-base
    mspack
    android
    dl
    log
  )
  target_compile_options("xenia-cpu" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-cpu" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-cpu"
    "xenia-base"
    "mspack"
  )
  set_target_properties("xenia-cpu" PROPERTIES
    OUTPUT_NAME "xenia-cpu"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-cpu" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/llvm/include
  )
  target_compile_definitions("xenia-cpu" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-cpu"
    xenia-base
    mspack
    android
    dl
    log
  )
  target_compile_options("xenia-cpu" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-cpu" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()