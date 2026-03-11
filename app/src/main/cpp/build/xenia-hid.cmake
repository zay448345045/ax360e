add_library("xenia-hid" STATIC
"xenia/src/xenia/hid/hid_flags.cc"
"xenia/src/xenia/hid/hid_flags.h"
"xenia/src/xenia/hid/input.h"
"xenia/src/xenia/hid/input_driver.h"
"xenia/src/xenia/hid/input_system.cc"
"xenia/src/xenia/hid/input_system.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-hid"
    "xenia-base"
  )
  set_target_properties("xenia-hid" PROPERTIES
    OUTPUT_NAME "xenia-hid"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-hid" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-hid" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-hid"
    xenia-base
    android
    dl
    log
  )
  target_compile_options("xenia-hid" PRIVATE
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
  set_target_properties("xenia-hid" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-hid"
    "xenia-base"
  )
  set_target_properties("xenia-hid" PROPERTIES
    OUTPUT_NAME "xenia-hid"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-hid" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-hid" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-hid"
    xenia-base
    android
    dl
    log
  )
  target_compile_options("xenia-hid" PRIVATE
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
  set_target_properties("xenia-hid" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-hid"
    "xenia-base"
  )
  set_target_properties("xenia-hid" PROPERTIES
    OUTPUT_NAME "xenia-hid"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-hid" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-hid" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-hid"
    xenia-base
    android
    dl
    log
  )
  target_compile_options("xenia-hid" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-hid" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()