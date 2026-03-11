add_library("xenia-cpu-backend-a64" STATIC
"xenia/src/xenia/cpu/backend/a64/a64_assembler.cc"
"xenia/src/xenia/cpu/backend/a64/a64_assembler.h"
"xenia/src/xenia/cpu/backend/a64/a64_backend.cc"
"xenia/src/xenia/cpu/backend/a64/a64_backend.h"
"xenia/src/xenia/cpu/backend/a64/a64_code_cache.cc"
"xenia/src/xenia/cpu/backend/a64/a64_code_cache.h"
"xenia/src/xenia/cpu/backend/a64/a64_emitter.cc"
"xenia/src/xenia/cpu/backend/a64/a64_emitter.h"
"xenia/src/xenia/cpu/backend/a64/a64_function.cc"
"xenia/src/xenia/cpu/backend/a64/a64_function.h"
"xenia/src/xenia/cpu/backend/a64/a64_op.h"
"xenia/src/xenia/cpu/backend/a64/a64_seq_control.cc"
"xenia/src/xenia/cpu/backend/a64/a64_seq_memory.cc"
"xenia/src/xenia/cpu/backend/a64/a64_seq_vector.cc"
"xenia/src/xenia/cpu/backend/a64/a64_sequences.cc"
"xenia/src/xenia/cpu/backend/a64/a64_sequences.h"
"xenia/src/xenia/cpu/backend/a64/a64_stack_layout.h"
"xenia/src/xenia/cpu/backend/a64/a64_tracers.cc"
"xenia/src/xenia/cpu/backend/a64/a64_tracers.h"
"xenia/src/xenia/cpu/backend/a64/a64_util.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-cpu-backend-a64"
    "fmt"
    "xenia-base"
    "xenia-cpu"
  )
  set_target_properties("xenia-cpu-backend-a64" PROPERTIES
    OUTPUT_NAME "xenia-cpu-backend-a64"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-cpu-backend-a64" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/oaknut/include
  )
  target_compile_definitions("xenia-cpu-backend-a64" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-cpu-backend-a64"
    fmt
    xenia-base
    xenia-cpu
    android
    dl
    log
  )
  target_compile_options("xenia-cpu-backend-a64" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Wno-4146>
    $<$<COMPILE_LANGUAGE:C>:-Wno-4267>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-4146>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-4267>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-cpu-backend-a64" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-cpu-backend-a64"
    "fmt"
    "xenia-base"
    "xenia-cpu"
  )
  set_target_properties("xenia-cpu-backend-a64" PROPERTIES
    OUTPUT_NAME "xenia-cpu-backend-a64"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-cpu-backend-a64" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/oaknut/include
  )
  target_compile_definitions("xenia-cpu-backend-a64" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-cpu-backend-a64"
    fmt
    xenia-base
    xenia-cpu
    android
    dl
    log
  )
  target_compile_options("xenia-cpu-backend-a64" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Wno-4146>
    $<$<COMPILE_LANGUAGE:C>:-Wno-4267>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-4146>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-4267>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-cpu-backend-a64" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-cpu-backend-a64"
    "fmt"
    "xenia-base"
    "xenia-cpu"
  )
  set_target_properties("xenia-cpu-backend-a64" PROPERTIES
    OUTPUT_NAME "xenia-cpu-backend-a64"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-cpu-backend-a64" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/oaknut/include
  )
  target_compile_definitions("xenia-cpu-backend-a64" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-cpu-backend-a64"
    fmt
    xenia-base
    xenia-cpu
    android
    dl
    log
  )
  target_compile_options("xenia-cpu-backend-a64" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Wno-4146>
    $<$<COMPILE_LANGUAGE:C>:-Wno-4267>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-4146>
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-4267>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-cpu-backend-a64" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()