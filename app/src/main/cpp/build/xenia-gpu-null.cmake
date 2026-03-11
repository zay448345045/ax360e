add_library("xenia-gpu-null" STATIC
"xenia/src/xenia/gpu/null/null_command_processor.cc"
"xenia/src/xenia/gpu/null/null_command_processor.h"
"xenia/src/xenia/gpu/null/null_graphics_system.cc"
"xenia/src/xenia/gpu/null/null_graphics_system.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-gpu-null"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xxhash"
  )
  set_target_properties("xenia-gpu-null" PROPERTIES
    OUTPUT_NAME "xenia-gpu-null"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-gpu-null" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-null" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-gpu-null"
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-null" PRIVATE
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
  set_target_properties("xenia-gpu-null" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-gpu-null"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xxhash"
  )
  set_target_properties("xenia-gpu-null" PROPERTIES
    OUTPUT_NAME "xenia-gpu-null"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-gpu-null" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-null" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu-null"
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-null" PRIVATE
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
  set_target_properties("xenia-gpu-null" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-gpu-null"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xxhash"
  )
  set_target_properties("xenia-gpu-null" PROPERTIES
    OUTPUT_NAME "xenia-gpu-null"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-gpu-null" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-null" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu-null"
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-null" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-gpu-null" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()