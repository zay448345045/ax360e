add_library("zarchive" STATIC
    "xenia/third_party/zarchive/include/zarchive/zarchivecommon.h"
    "xenia/third_party/zarchive/include/zarchive/zarchivereader.h"
    "xenia/third_party/zarchive/include/zarchive/zarchivewriter.h"
  "xenia/third_party/zarchive/src/sha_256.c"
  "xenia/third_party/zarchive/src/sha_256.h"
  "xenia/third_party/zarchive/src/zarchivereader.cpp"
  "xenia/third_party/zarchive/src/zarchivewriter.cpp"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("zarchive"
    "zstd"
  )
  set_target_properties("zarchive" PROPERTIES
    OUTPUT_NAME "zarchive"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("zarchive" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/zarchive/include
    xenia/third_party/zstd/lib
  )
  target_compile_definitions("zarchive" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    _LIB
  )
  target_link_libraries("zarchive"
    zstd
    android
    dl
    log
  )
  target_compile_options("zarchive" PRIVATE
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
  set_target_properties("zarchive" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("zarchive"
    "zstd"
  )
  set_target_properties("zarchive" PROPERTIES
    OUTPUT_NAME "zarchive"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("zarchive" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/zarchive/include
    xenia/third_party/zstd/lib
  )
  target_compile_definitions("zarchive" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    _NO_DEBUG_HEAP=1
    _LIB
  )
  target_link_libraries("zarchive"
    zstd
    android
    dl
    log
  )
  target_compile_options("zarchive" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zarchive" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("zarchive"
    "zstd"
  )
  set_target_properties("zarchive" PROPERTIES
    OUTPUT_NAME "zarchive"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("zarchive" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/zarchive/include
    xenia/third_party/zstd/lib
  )
  target_compile_definitions("zarchive" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    NDEBUG
    _NO_DEBUG_HEAP=1
    _LIB
  )
  target_link_libraries("zarchive"
    zstd
    android
    dl
    log
  )
  target_compile_options("zarchive" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zarchive" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()