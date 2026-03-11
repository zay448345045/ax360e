add_library("zlib" STATIC
"xenia/third_party/zlib/adler32.c"
"xenia/third_party/zlib/compress.c"
"xenia/third_party/zlib/crc32.c"
"xenia/third_party/zlib/crc32.h"
"xenia/third_party/zlib/deflate.c"
"xenia/third_party/zlib/deflate.h"
"xenia/third_party/zlib/gzclose.c"
"xenia/third_party/zlib/gzguts.h"
"xenia/third_party/zlib/gzlib.c"
"xenia/third_party/zlib/gzread.c"
"xenia/third_party/zlib/gzwrite.c"
"xenia/third_party/zlib/infback.c"
"xenia/third_party/zlib/inffast.c"
"xenia/third_party/zlib/inffast.h"
"xenia/third_party/zlib/inffixed.h"
"xenia/third_party/zlib/inflate.c"
"xenia/third_party/zlib/inflate.h"
"xenia/third_party/zlib/inftrees.c"
"xenia/third_party/zlib/inftrees.h"
"xenia/third_party/zlib/trees.c"
"xenia/third_party/zlib/trees.h"
"xenia/third_party/zlib/uncompr.c"
"xenia/third_party/zlib/zconf.h"
"xenia/third_party/zlib/zlib.h"
"xenia/third_party/zlib/zutil.c"
"xenia/third_party/zlib/zutil.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  set_target_properties("zlib" PROPERTIES
    OUTPUT_NAME "zlib"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("zlib" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("zlib" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("zlib"
    android
    dl
    log
  )
  set(_TARGET_COMPILE_FLAGS -Wno-implicit-function-declaration)
  string(REPLACE ";" " " _TARGET_COMPILE_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "zlib" PROPERTY COMPILE_FLAGS ${_TARGET_COMPILE_FLAGS})
  unset(_TARGET_COMPILE_FLAGS)
  target_compile_options("zlib" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-std=c90>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zlib" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("zlib" PROPERTIES
    OUTPUT_NAME "zlib"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("zlib" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("zlib" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("zlib"
    android
    dl
    log
  )
  set(_TARGET_COMPILE_FLAGS -Wno-implicit-function-declaration)
  string(REPLACE ";" " " _TARGET_COMPILE_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "zlib" PROPERTY COMPILE_FLAGS ${_TARGET_COMPILE_FLAGS})
  unset(_TARGET_COMPILE_FLAGS)
  target_compile_options("zlib" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-std=c90>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zlib" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("zlib" PROPERTIES
    OUTPUT_NAME "zlib"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("zlib" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("zlib" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("zlib"
    android
    dl
    log
  )
  set(_TARGET_COMPILE_FLAGS -Wno-implicit-function-declaration)
  string(REPLACE ";" " " _TARGET_COMPILE_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "zlib" PROPERTY COMPILE_FLAGS ${_TARGET_COMPILE_FLAGS})
  unset(_TARGET_COMPILE_FLAGS)
  target_compile_options("zlib" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-std=c90>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zlib" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()