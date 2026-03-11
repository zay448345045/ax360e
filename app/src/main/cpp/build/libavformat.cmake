add_library("libavformat" SHARED
"xenia/third_party/FFmpeg/libavformat/allformats.c"
"xenia/third_party/FFmpeg/libavformat/asf.c"
"xenia/third_party/FFmpeg/libavformat/asfcrypt.c"
"xenia/third_party/FFmpeg/libavformat/asfdec_f.c"
"xenia/third_party/FFmpeg/libavformat/avformat.h"
"xenia/third_party/FFmpeg/libavformat/avio.c"
"xenia/third_party/FFmpeg/libavformat/avio.h"
"xenia/third_party/FFmpeg/libavformat/aviobuf.c"
"xenia/third_party/FFmpeg/libavformat/avlanguage.c"
"xenia/third_party/FFmpeg/libavformat/dump.c"
"xenia/third_party/FFmpeg/libavformat/file.c"
"xenia/third_party/FFmpeg/libavformat/format.c"
"xenia/third_party/FFmpeg/libavformat/id3v1.c"
"xenia/third_party/FFmpeg/libavformat/id3v2.c"
"xenia/third_party/FFmpeg/libavformat/metadata.c"
"xenia/third_party/FFmpeg/libavformat/mp3dec.c"
"xenia/third_party/FFmpeg/libavformat/mux.c"
"xenia/third_party/FFmpeg/libavformat/options.c"
"xenia/third_party/FFmpeg/libavformat/os_support.c"
"xenia/third_party/FFmpeg/libavformat/protocols.c"
"xenia/third_party/FFmpeg/libavformat/replaygain.c"
"xenia/third_party/FFmpeg/libavformat/riff.c"
"xenia/third_party/FFmpeg/libavformat/riffdec.c"
"xenia/third_party/FFmpeg/libavformat/sdp.c"
"xenia/third_party/FFmpeg/libavformat/url.c"
"xenia/third_party/FFmpeg/libavformat/utils.c"
"xenia/third_party/FFmpeg/libavformat/version.h"
)

set_target_properties(libavformat PROPERTIES OUTPUT_NAME "avformat")
target_link_options(libavformat PRIVATE -Wl,-version-script=${CMAKE_SOURCE_DIR}/xenia/third_party/FFmpeg/libavformat/libavformat.v)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("libavformat"
    "libavutil"
    "libavcodec"
  )
  set_target_properties("libavformat" PROPERTIES
    OUTPUT_NAME "libavformat"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("libavformat" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavformat" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavformat"
    libavutil
    libavcodec
    android
    dl
    log
  )
  target_compile_options("libavformat" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/allformats.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asfcrypt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asfdec_f.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avformat.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avio.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avio.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/aviobuf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avlanguage.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/dump.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/file.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/format.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/id3v1.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/id3v2.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/mp3dec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/mux.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/options.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/os_support.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/protocols.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/replaygain.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/riff.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/riffdec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/sdp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/url.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavformat" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("libavformat"
    "libavutil"
    "libavcodec"
  )
  set_target_properties("libavformat" PROPERTIES
    OUTPUT_NAME "libavformat"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("libavformat" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavformat" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavformat"
    libavutil
    libavcodec
    android
    dl
    log
  )
  target_compile_options("libavformat" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/allformats.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asfcrypt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asfdec_f.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avformat.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avio.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avio.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/aviobuf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avlanguage.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/dump.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/file.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/format.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/id3v1.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/id3v2.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/mp3dec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/mux.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/options.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/os_support.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/protocols.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/replaygain.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/riff.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/riffdec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/sdp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/url.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavformat" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("libavformat"
    "libavutil"
    "libavcodec"
  )
  set_target_properties("libavformat" PROPERTIES
    OUTPUT_NAME "libavformat"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("libavformat" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavformat" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavformat"
    libavutil
    libavcodec
    android
    dl
    log
  )
  target_compile_options("libavformat" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/allformats.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asfcrypt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/asfdec_f.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avformat.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avio.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avio.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/aviobuf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/avlanguage.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/dump.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/file.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/format.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/id3v1.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/id3v2.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/mp3dec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/mux.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/options.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/os_support.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/protocols.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/replaygain.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/riff.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/riffdec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/sdp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/url.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavformat/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavformat" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()