add_library("capstone" STATIC
"xenia/third_party/capstone/LEB128.h"
"xenia/third_party/capstone/MCDisassembler.h"
"xenia/third_party/capstone/MCFixedLenDisassembler.h"
"xenia/third_party/capstone/MCInst.c"
"xenia/third_party/capstone/MCInst.h"
"xenia/third_party/capstone/MCInstrDesc.c"
"xenia/third_party/capstone/MCInstrDesc.h"
"xenia/third_party/capstone/MCInstPrinter.c"
"xenia/third_party/capstone/MCInstPrinter.h"
"xenia/third_party/capstone/MCRegisterInfo.c"
"xenia/third_party/capstone/MCRegisterInfo.h"
"xenia/third_party/capstone/Mapping.c"
"xenia/third_party/capstone/Mapping.h"
"xenia/third_party/capstone/MathExtras.h"
"xenia/third_party/capstone/SStream.c"
"xenia/third_party/capstone/SStream.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64AddressingModes.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64BaseInfo.c"
    "xenia/third_party/capstone/arch/AArch64/AArch64BaseInfo.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64Disassembler.c"
    "xenia/third_party/capstone/arch/AArch64/AArch64DisassemblerExtension.c"
    "xenia/third_party/capstone/arch/AArch64/AArch64DisassemblerExtension.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenAsmWriter.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenCSAliasMnemMap.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenCSFeatureName.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenCSMappingInsn.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenCSMappingInsnName.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenCSMappingInsnOp.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenCSOpGroup.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenDisassemblerTables.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenInstrInfo.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenRegisterInfo.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenSystemRegister.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenSubtargetInfo.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64GenSystemOperands.inc"
    "xenia/third_party/capstone/arch/AArch64/AArch64InstPrinter.c"
    "xenia/third_party/capstone/arch/AArch64/AArch64InstPrinter.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64Linkage.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64Mapping.c"
    "xenia/third_party/capstone/arch/AArch64/AArch64Mapping.h"
    "xenia/third_party/capstone/arch/AArch64/AArch64Module.c"
    "xenia/third_party/capstone/arch/AArch64/AArch64Module.h"
"xenia/third_party/capstone/cs.c"
"xenia/third_party/capstone/cs_priv.h"
"xenia/third_party/capstone/utils.c"
"xenia/third_party/capstone/utils.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  set_target_properties("capstone" PROPERTIES
    OUTPUT_NAME "capstone"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("capstone" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/capstone
    xenia/third_party/capstone/include
  )
  target_compile_definitions("capstone" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    CAPSTONE_DIET_NO
    CAPSTONE_USE_SYS_DYN_MEM
    _LIB
    CAPSTONE_HAS_AARCH64
  )
  target_link_libraries("capstone"
    android
    dl
    log
  )
  target_compile_options("capstone" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("capstone" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("capstone" PROPERTIES
    OUTPUT_NAME "capstone"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("capstone" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/capstone
    xenia/third_party/capstone/include
  )
  target_compile_definitions("capstone" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    _NO_DEBUG_HEAP=1
    CAPSTONE_DIET_NO
    CAPSTONE_USE_SYS_DYN_MEM
    _LIB
    CAPSTONE_HAS_AARCH64
  )
  target_link_libraries("capstone"
    android
    dl
    log
  )
  target_compile_options("capstone" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("capstone" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("capstone" PROPERTIES
    OUTPUT_NAME "capstone"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("capstone" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/capstone
    xenia/third_party/capstone/include
  )
  target_compile_definitions("capstone" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    NDEBUG
    _NO_DEBUG_HEAP=1
    CAPSTONE_DIET_NO
    CAPSTONE_USE_SYS_DYN_MEM
    _LIB
    CAPSTONE_HAS_AARCH64
  )
  target_link_libraries("capstone"
    android
    dl
    log
  )
  target_compile_options("capstone" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("capstone" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()