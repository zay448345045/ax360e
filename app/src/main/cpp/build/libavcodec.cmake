add_library("libavcodec" SHARED
"xenia/third_party/FFmpeg/libavcodec/aactab.c"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/fft_init_aarch64.c"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/fft_neon.S"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.c"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/mdct_neon.S"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.c"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_neon.S"
  "xenia/third_party/FFmpeg/libavcodec/aarch64/simple_idct_neon.S"
"xenia/third_party/FFmpeg/libavcodec/ac3_parser.c"
"xenia/third_party/FFmpeg/libavcodec/ac3_parser.h"
"xenia/third_party/FFmpeg/libavcodec/adts_parser.c"
"xenia/third_party/FFmpeg/libavcodec/adts_parser.h"
"xenia/third_party/FFmpeg/libavcodec/allcodecs.c"
"xenia/third_party/FFmpeg/libavcodec/avcodec.c"
"xenia/third_party/FFmpeg/libavcodec/avcodec.h"
"xenia/third_party/FFmpeg/libavcodec/avdct.c"
"xenia/third_party/FFmpeg/libavcodec/avdct.h"
"xenia/third_party/FFmpeg/libavcodec/avfft.c"
"xenia/third_party/FFmpeg/libavcodec/avfft.h"
"xenia/third_party/FFmpeg/libavcodec/avpacket.c"
"xenia/third_party/FFmpeg/libavcodec/avpicture.c"
"xenia/third_party/FFmpeg/libavcodec/bitstream.c"
"xenia/third_party/FFmpeg/libavcodec/bitstream_filter.c"
"xenia/third_party/FFmpeg/libavcodec/bitstream_filters.c"
"xenia/third_party/FFmpeg/libavcodec/bsf.c"
"xenia/third_party/FFmpeg/libavcodec/bsf.h"
"xenia/third_party/FFmpeg/libavcodec/codec.h"
"xenia/third_party/FFmpeg/libavcodec/codec_desc.c"
"xenia/third_party/FFmpeg/libavcodec/codec_desc.h"
"xenia/third_party/FFmpeg/libavcodec/codec_id.h"
"xenia/third_party/FFmpeg/libavcodec/codec_par.c"
"xenia/third_party/FFmpeg/libavcodec/codec_par.h"
"xenia/third_party/FFmpeg/libavcodec/d3d11va.c"
"xenia/third_party/FFmpeg/libavcodec/d3d11va.h"
"xenia/third_party/FFmpeg/libavcodec/dct.c"
"xenia/third_party/FFmpeg/libavcodec/dct32_fixed.c"
"xenia/third_party/FFmpeg/libavcodec/dct32_float.c"
"xenia/third_party/FFmpeg/libavcodec/decode.c"
"xenia/third_party/FFmpeg/libavcodec/dirac.c"
"xenia/third_party/FFmpeg/libavcodec/dirac.h"
"xenia/third_party/FFmpeg/libavcodec/dv_profile.c"
"xenia/third_party/FFmpeg/libavcodec/dv_profile.h"
"xenia/third_party/FFmpeg/libavcodec/dxva2.h"
"xenia/third_party/FFmpeg/libavcodec/encode.c"
"xenia/third_party/FFmpeg/libavcodec/faandct.c"
"xenia/third_party/FFmpeg/libavcodec/faanidct.c"
"xenia/third_party/FFmpeg/libavcodec/fdctdsp.c"
"xenia/third_party/FFmpeg/libavcodec/fft_fixed_32.c"
"xenia/third_party/FFmpeg/libavcodec/fft_float.c"
"xenia/third_party/FFmpeg/libavcodec/fft_init_table.c"
"xenia/third_party/FFmpeg/libavcodec/idctdsp.c"
"xenia/third_party/FFmpeg/libavcodec/imgconvert.c"
"xenia/third_party/FFmpeg/libavcodec/jfdctfst.c"
"xenia/third_party/FFmpeg/libavcodec/jfdctint.c"
"xenia/third_party/FFmpeg/libavcodec/jni.c"
"xenia/third_party/FFmpeg/libavcodec/jni.h"
"xenia/third_party/FFmpeg/libavcodec/jrevdct.c"
"xenia/third_party/FFmpeg/libavcodec/mathtables.c"
"xenia/third_party/FFmpeg/libavcodec/mdct_fixed_32.c"
"xenia/third_party/FFmpeg/libavcodec/mdct_float.c"
"xenia/third_party/FFmpeg/libavcodec/mediacodec.c"
"xenia/third_party/FFmpeg/libavcodec/mediacodec.h"
"xenia/third_party/FFmpeg/libavcodec/mpeg12framerate.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudio.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudio_parser.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodata.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_common.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_fixed.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_float.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodecheader.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_data.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_fixed.c"
"xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_float.c"
"xenia/third_party/FFmpeg/libavcodec/null_bsf.c"
"xenia/third_party/FFmpeg/libavcodec/options.c"
"xenia/third_party/FFmpeg/libavcodec/packet.h"
"xenia/third_party/FFmpeg/libavcodec/parser.c"
"xenia/third_party/FFmpeg/libavcodec/parsers.c"
"xenia/third_party/FFmpeg/libavcodec/profiles.c"
"xenia/third_party/FFmpeg/libavcodec/pthread.c"
"xenia/third_party/FFmpeg/libavcodec/pthread_frame.c"
"xenia/third_party/FFmpeg/libavcodec/pthread_slice.c"
"xenia/third_party/FFmpeg/libavcodec/qsv.h"
"xenia/third_party/FFmpeg/libavcodec/qsv_api.c"
"xenia/third_party/FFmpeg/libavcodec/raw.c"
"xenia/third_party/FFmpeg/libavcodec/rdft.c"
"xenia/third_party/FFmpeg/libavcodec/simple_idct.c"
"xenia/third_party/FFmpeg/libavcodec/sinewin.c"
"xenia/third_party/FFmpeg/libavcodec/utils.c"
"xenia/third_party/FFmpeg/libavcodec/vaapi.h"
"xenia/third_party/FFmpeg/libavcodec/vdpau.h"
"xenia/third_party/FFmpeg/libavcodec/version.h"
"xenia/third_party/FFmpeg/libavcodec/videotoolbox.h"
"xenia/third_party/FFmpeg/libavcodec/vorbis_parser.c"
"xenia/third_party/FFmpeg/libavcodec/vorbis_parser.h"
"xenia/third_party/FFmpeg/libavcodec/wma.c"
"xenia/third_party/FFmpeg/libavcodec/wma_common.c"
"xenia/third_party/FFmpeg/libavcodec/wma_freqs.c"
"xenia/third_party/FFmpeg/libavcodec/wmadec.c"
"xenia/third_party/FFmpeg/libavcodec/wmaprodec.c"
"xenia/third_party/FFmpeg/libavcodec/xiph.c"
"xenia/third_party/FFmpeg/libavcodec/xvmc.h"
        "xenia/third_party/FFmpeg/libavutil/reverse.c"
)

set_target_properties(libavcodec PROPERTIES OUTPUT_NAME "avcodec")
target_link_options(libavcodec PRIVATE -Wl,-version-script=${CMAKE_SOURCE_DIR}/xenia/third_party/FFmpeg/libavcodec/libavcodec.v)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("libavcodec"
    "libavutil"
  )
  set_target_properties("libavcodec" PROPERTIES
    OUTPUT_NAME "libavcodec"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("libavcodec" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavcodec" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavcodec"
    libavutil
    android
    dl
    log
  )
  target_compile_options("libavcodec" PRIVATE
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
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aactab.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/fft_init_aarch64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/fft_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mdct_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/simple_idct_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/ac3_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/ac3_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/adts_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/adts_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/allcodecs.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avcodec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avcodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avdct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avdct.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avfft.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avfft.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avpacket.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avpicture.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream_filter.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream_filters.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bsf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bsf.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_desc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_desc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_id.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_par.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_par.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/d3d11va.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/d3d11va.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct32_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct32_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/decode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dirac.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dirac.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dv_profile.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dv_profile.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dxva2.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/encode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/faandct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/faanidct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fdctdsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_fixed_32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_init_table.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/idctdsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/imgconvert.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jfdctfst.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jfdctint.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jni.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jni.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jrevdct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mathtables.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mdct_fixed_32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mdct_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mediacodec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mediacodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpeg12framerate.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudio.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudio_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_common.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodecheader.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_data.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/null_bsf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/options.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/packet.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/parsers.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/profiles.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread_frame.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread_slice.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/qsv.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/qsv_api.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/raw.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/rdft.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/simple_idct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/sinewin.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vaapi.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vdpau.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/videotoolbox.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vorbis_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vorbis_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma_common.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma_freqs.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wmadec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/xiph.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/xvmc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavcodec" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("libavcodec"
    "libavutil"
  )
  set_target_properties("libavcodec" PROPERTIES
    OUTPUT_NAME "libavcodec"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("libavcodec" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavcodec" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavcodec"
    libavutil
    android
    dl
    log
  )
  target_compile_options("libavcodec" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aactab.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/fft_init_aarch64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/fft_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mdct_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/simple_idct_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/ac3_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/ac3_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/adts_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/adts_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/allcodecs.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avcodec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avcodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avdct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avdct.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avfft.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avfft.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avpacket.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avpicture.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream_filter.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream_filters.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bsf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bsf.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_desc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_desc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_id.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_par.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_par.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/d3d11va.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/d3d11va.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct32_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct32_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/decode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dirac.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dirac.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dv_profile.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dv_profile.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dxva2.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/encode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/faandct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/faanidct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fdctdsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_fixed_32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_init_table.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/idctdsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/imgconvert.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jfdctfst.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jfdctint.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jni.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jni.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jrevdct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mathtables.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mdct_fixed_32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mdct_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mediacodec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mediacodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpeg12framerate.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudio.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudio_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_common.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodecheader.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_data.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/null_bsf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/options.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/packet.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/parsers.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/profiles.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread_frame.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread_slice.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/qsv.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/qsv_api.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/raw.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/rdft.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/simple_idct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/sinewin.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vaapi.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vdpau.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/videotoolbox.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vorbis_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vorbis_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma_common.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma_freqs.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wmadec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/xiph.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/xvmc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavcodec" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("libavcodec"
    "libavutil"
  )
  set_target_properties("libavcodec" PROPERTIES
    OUTPUT_NAME "libavcodec"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("libavcodec" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavcodec" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavcodec"
    libavutil
    android
    dl
    log
  )
  target_compile_options("libavcodec" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aactab.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/fft_init_aarch64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/fft_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/idctdsp_init_aarch64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mdct_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_init.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/mpegaudiodsp_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/aarch64/simple_idct_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/ac3_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/ac3_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/adts_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/adts_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/allcodecs.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avcodec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avcodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avdct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avdct.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avfft.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avfft.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avpacket.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/avpicture.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream_filter.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bitstream_filters.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bsf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/bsf.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_desc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_desc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_id.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_par.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/codec_par.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/d3d11va.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/d3d11va.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct32_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dct32_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/decode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dirac.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dirac.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dv_profile.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dv_profile.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/dxva2.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/encode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/faandct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/faanidct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fdctdsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_fixed_32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/fft_init_table.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/idctdsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/imgconvert.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jfdctfst.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jfdctint.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jni.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jni.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/jrevdct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mathtables.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mdct_fixed_32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mdct_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mediacodec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mediacodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpeg12framerate.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudio.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudio_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_common.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodec_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodecheader.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_data.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_fixed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/mpegaudiodsp_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/null_bsf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/options.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/packet.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/parsers.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/profiles.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread_frame.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/pthread_slice.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/qsv.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/qsv_api.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/raw.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/rdft.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/simple_idct.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/sinewin.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vaapi.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vdpau.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/videotoolbox.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vorbis_parser.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/vorbis_parser.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma_common.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wma_freqs.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/wmadec.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/xiph.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavcodec/xvmc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavcodec" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()