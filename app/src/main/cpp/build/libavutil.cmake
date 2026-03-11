add_library("libavutil" SHARED
  "xenia/third_party/FFmpeg/libavutil/aarch64/cpu.c"
  "xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_init.c"
  "xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_neon.S"
"xenia/third_party/FFmpeg/libavutil/adler32.c"
"xenia/third_party/FFmpeg/libavutil/adler32.h"
"xenia/third_party/FFmpeg/libavutil/aes.c"
"xenia/third_party/FFmpeg/libavutil/aes.h"
"xenia/third_party/FFmpeg/libavutil/aes_ctr.c"
"xenia/third_party/FFmpeg/libavutil/aes_ctr.h"
"xenia/third_party/FFmpeg/libavutil/attributes.h"
"xenia/third_party/FFmpeg/libavutil/audio_fifo.c"
"xenia/third_party/FFmpeg/libavutil/audio_fifo.h"
"xenia/third_party/FFmpeg/libavutil/avassert.h"
"xenia/third_party/FFmpeg/libavutil/avconfig.h"
"xenia/third_party/FFmpeg/libavutil/avsscanf.c"
"xenia/third_party/FFmpeg/libavutil/avstring.c"
"xenia/third_party/FFmpeg/libavutil/avstring.h"
"xenia/third_party/FFmpeg/libavutil/avutil.h"
"xenia/third_party/FFmpeg/libavutil/base64.c"
"xenia/third_party/FFmpeg/libavutil/base64.h"
"xenia/third_party/FFmpeg/libavutil/blowfish.c"
"xenia/third_party/FFmpeg/libavutil/blowfish.h"
"xenia/third_party/FFmpeg/libavutil/bprint.c"
"xenia/third_party/FFmpeg/libavutil/bprint.h"
"xenia/third_party/FFmpeg/libavutil/bswap.h"
"xenia/third_party/FFmpeg/libavutil/buffer.c"
"xenia/third_party/FFmpeg/libavutil/buffer.h"
"xenia/third_party/FFmpeg/libavutil/camellia.c"
"xenia/third_party/FFmpeg/libavutil/camellia.h"
"xenia/third_party/FFmpeg/libavutil/cast5.c"
"xenia/third_party/FFmpeg/libavutil/cast5.h"
"xenia/third_party/FFmpeg/libavutil/channel_layout.c"
"xenia/third_party/FFmpeg/libavutil/channel_layout.h"
"xenia/third_party/FFmpeg/libavutil/color_utils.c"
"xenia/third_party/FFmpeg/libavutil/common.h"
"xenia/third_party/FFmpeg/libavutil/cpu.c"
"xenia/third_party/FFmpeg/libavutil/cpu.h"
"xenia/third_party/FFmpeg/libavutil/crc.c"
"xenia/third_party/FFmpeg/libavutil/crc.h"
"xenia/third_party/FFmpeg/libavutil/des.c"
"xenia/third_party/FFmpeg/libavutil/des.h"
"xenia/third_party/FFmpeg/libavutil/dict.c"
"xenia/third_party/FFmpeg/libavutil/dict.h"
"xenia/third_party/FFmpeg/libavutil/display.c"
"xenia/third_party/FFmpeg/libavutil/display.h"
"xenia/third_party/FFmpeg/libavutil/dovi_meta.c"
"xenia/third_party/FFmpeg/libavutil/dovi_meta.h"
"xenia/third_party/FFmpeg/libavutil/downmix_info.c"
"xenia/third_party/FFmpeg/libavutil/downmix_info.h"
"xenia/third_party/FFmpeg/libavutil/encryption_info.c"
"xenia/third_party/FFmpeg/libavutil/encryption_info.h"
"xenia/third_party/FFmpeg/libavutil/error.c"
"xenia/third_party/FFmpeg/libavutil/error.h"
"xenia/third_party/FFmpeg/libavutil/eval.c"
"xenia/third_party/FFmpeg/libavutil/eval.h"
"xenia/third_party/FFmpeg/libavutil/ffversion.h"
"xenia/third_party/FFmpeg/libavutil/fifo.c"
"xenia/third_party/FFmpeg/libavutil/fifo.h"
"xenia/third_party/FFmpeg/libavutil/file.c"
"xenia/third_party/FFmpeg/libavutil/file.h"
"xenia/third_party/FFmpeg/libavutil/file_open.c"
"xenia/third_party/FFmpeg/libavutil/film_grain_params.c"
"xenia/third_party/FFmpeg/libavutil/film_grain_params.h"
"xenia/third_party/FFmpeg/libavutil/fixed_dsp.c"
"xenia/third_party/FFmpeg/libavutil/float_dsp.c"
"xenia/third_party/FFmpeg/libavutil/frame.c"
"xenia/third_party/FFmpeg/libavutil/frame.h"
"xenia/third_party/FFmpeg/libavutil/hash.c"
"xenia/third_party/FFmpeg/libavutil/hash.h"
"xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.c"
"xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.h"
"xenia/third_party/FFmpeg/libavutil/hmac.c"
"xenia/third_party/FFmpeg/libavutil/hmac.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext.c"
"xenia/third_party/FFmpeg/libavutil/hwcontext.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_cuda.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_d3d11va.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_drm.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_dxva2.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_mediacodec.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_opencl.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_qsv.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_vaapi.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_vdpau.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_videotoolbox.h"
"xenia/third_party/FFmpeg/libavutil/hwcontext_vulkan.h"
"xenia/third_party/FFmpeg/libavutil/imgutils.c"
"xenia/third_party/FFmpeg/libavutil/imgutils.h"
"xenia/third_party/FFmpeg/libavutil/integer.c"
"xenia/third_party/FFmpeg/libavutil/intfloat.h"
"xenia/third_party/FFmpeg/libavutil/intmath.c"
"xenia/third_party/FFmpeg/libavutil/intmath.h"
"xenia/third_party/FFmpeg/libavutil/intreadwrite.h"
"xenia/third_party/FFmpeg/libavutil/lfg.c"
"xenia/third_party/FFmpeg/libavutil/lfg.h"
"xenia/third_party/FFmpeg/libavutil/lls.c"
"xenia/third_party/FFmpeg/libavutil/log.c"
"xenia/third_party/FFmpeg/libavutil/log.h"
"xenia/third_party/FFmpeg/libavutil/log2_tab.c"
"xenia/third_party/FFmpeg/libavutil/macros.h"
"xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.c"
"xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.h"
"xenia/third_party/FFmpeg/libavutil/mathematics.c"
"xenia/third_party/FFmpeg/libavutil/mathematics.h"
"xenia/third_party/FFmpeg/libavutil/md5.c"
"xenia/third_party/FFmpeg/libavutil/md5.h"
"xenia/third_party/FFmpeg/libavutil/mem.c"
"xenia/third_party/FFmpeg/libavutil/mem.h"
"xenia/third_party/FFmpeg/libavutil/motion_vector.h"
"xenia/third_party/FFmpeg/libavutil/murmur3.c"
"xenia/third_party/FFmpeg/libavutil/murmur3.h"
"xenia/third_party/FFmpeg/libavutil/opt.c"
"xenia/third_party/FFmpeg/libavutil/opt.h"
"xenia/third_party/FFmpeg/libavutil/parseutils.c"
"xenia/third_party/FFmpeg/libavutil/parseutils.h"
"xenia/third_party/FFmpeg/libavutil/pixdesc.c"
"xenia/third_party/FFmpeg/libavutil/pixdesc.h"
"xenia/third_party/FFmpeg/libavutil/pixelutils.c"
"xenia/third_party/FFmpeg/libavutil/pixelutils.h"
"xenia/third_party/FFmpeg/libavutil/pixfmt.h"
"xenia/third_party/FFmpeg/libavutil/random_seed.c"
"xenia/third_party/FFmpeg/libavutil/random_seed.h"
"xenia/third_party/FFmpeg/libavutil/rational.c"
"xenia/third_party/FFmpeg/libavutil/rational.h"
"xenia/third_party/FFmpeg/libavutil/rc4.c"
"xenia/third_party/FFmpeg/libavutil/rc4.h"
"xenia/third_party/FFmpeg/libavutil/replaygain.h"
"xenia/third_party/FFmpeg/libavutil/reverse.c"
"xenia/third_party/FFmpeg/libavutil/ripemd.c"
"xenia/third_party/FFmpeg/libavutil/ripemd.h"
"xenia/third_party/FFmpeg/libavutil/samplefmt.c"
"xenia/third_party/FFmpeg/libavutil/samplefmt.h"
"xenia/third_party/FFmpeg/libavutil/sha.c"
"xenia/third_party/FFmpeg/libavutil/sha.h"
"xenia/third_party/FFmpeg/libavutil/sha512.c"
"xenia/third_party/FFmpeg/libavutil/sha512.h"
"xenia/third_party/FFmpeg/libavutil/slicethread.c"
"xenia/third_party/FFmpeg/libavutil/spherical.c"
"xenia/third_party/FFmpeg/libavutil/spherical.h"
"xenia/third_party/FFmpeg/libavutil/stereo3d.c"
"xenia/third_party/FFmpeg/libavutil/stereo3d.h"
"xenia/third_party/FFmpeg/libavutil/tea.c"
"xenia/third_party/FFmpeg/libavutil/tea.h"
"xenia/third_party/FFmpeg/libavutil/threadmessage.c"
"xenia/third_party/FFmpeg/libavutil/threadmessage.h"
"xenia/third_party/FFmpeg/libavutil/time.c"
"xenia/third_party/FFmpeg/libavutil/time.h"
"xenia/third_party/FFmpeg/libavutil/timecode.c"
"xenia/third_party/FFmpeg/libavutil/timecode.h"
"xenia/third_party/FFmpeg/libavutil/timer.h"
"xenia/third_party/FFmpeg/libavutil/timestamp.h"
"xenia/third_party/FFmpeg/libavutil/tree.c"
"xenia/third_party/FFmpeg/libavutil/tree.h"
"xenia/third_party/FFmpeg/libavutil/twofish.c"
"xenia/third_party/FFmpeg/libavutil/twofish.h"
"xenia/third_party/FFmpeg/libavutil/tx.c"
"xenia/third_party/FFmpeg/libavutil/tx.h"
"xenia/third_party/FFmpeg/libavutil/tx_double.c"
"xenia/third_party/FFmpeg/libavutil/tx_float.c"
"xenia/third_party/FFmpeg/libavutil/tx_int32.c"
"xenia/third_party/FFmpeg/libavutil/utils.c"
"xenia/third_party/FFmpeg/libavutil/version.h"
"xenia/third_party/FFmpeg/libavutil/video_enc_params.c"
"xenia/third_party/FFmpeg/libavutil/video_enc_params.h"
"xenia/third_party/FFmpeg/libavutil/xga_font_data.c"
"xenia/third_party/FFmpeg/libavutil/xtea.c"
"xenia/third_party/FFmpeg/libavutil/xtea.h"
)

set_target_properties(libavutil PROPERTIES OUTPUT_NAME "avutil")
target_link_options(libavutil PRIVATE -Wl,-version-script=${CMAKE_SOURCE_DIR}/xenia/third_party/FFmpeg/libavutil/libavutil.v)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  set_target_properties("libavutil" PROPERTIES
    OUTPUT_NAME "libavutil"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("libavutil" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavutil" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavutil"
    android
    dl
    log
  )
  target_compile_options("libavutil" PRIVATE
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
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/cpu.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_init.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/adler32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/adler32.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes_ctr.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes_ctr.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/attributes.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/audio_fifo.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/audio_fifo.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avassert.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avconfig.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avsscanf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avstring.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avstring.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avutil.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/base64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/base64.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/blowfish.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/blowfish.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bprint.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bprint.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bswap.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/buffer.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/buffer.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/camellia.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/camellia.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cast5.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cast5.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/channel_layout.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/channel_layout.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/color_utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/common.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cpu.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cpu.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/crc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/crc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/des.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/des.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dict.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dict.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/display.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/display.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dovi_meta.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dovi_meta.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/downmix_info.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/downmix_info.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/encryption_info.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/encryption_info.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/error.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/error.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/eval.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/eval.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ffversion.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fifo.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fifo.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file_open.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/film_grain_params.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/film_grain_params.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fixed_dsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/float_dsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/frame.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/frame.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hash.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hash.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hmac.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hmac.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_cuda.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_d3d11va.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_drm.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_dxva2.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_mediacodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_opencl.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_qsv.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vaapi.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vdpau.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_videotoolbox.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vulkan.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/imgutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/imgutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/integer.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intfloat.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intmath.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intmath.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intreadwrite.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lfg.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lfg.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lls.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log2_tab.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/macros.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mathematics.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mathematics.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/md5.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/md5.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mem.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mem.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/motion_vector.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/murmur3.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/murmur3.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/opt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/opt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/parseutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/parseutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixdesc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixdesc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixelutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixelutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixfmt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/random_seed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/random_seed.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rational.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rational.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rc4.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rc4.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/replaygain.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/reverse.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ripemd.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ripemd.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/samplefmt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/samplefmt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha512.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha512.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/slicethread.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/spherical.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/spherical.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/stereo3d.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/stereo3d.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tea.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tea.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/threadmessage.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/threadmessage.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/time.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/time.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timecode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timecode.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timer.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timestamp.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tree.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tree.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/twofish.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/twofish.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_double.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_int32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/video_enc_params.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/video_enc_params.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xga_font_data.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xtea.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xtea.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavutil" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("libavutil" PROPERTIES
    OUTPUT_NAME "libavutil"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("libavutil" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavutil" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavutil"
    android
    dl
    log
  )
  target_compile_options("libavutil" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/cpu.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_init.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/adler32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/adler32.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes_ctr.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes_ctr.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/attributes.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/audio_fifo.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/audio_fifo.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avassert.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avconfig.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avsscanf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avstring.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avstring.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avutil.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/base64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/base64.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/blowfish.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/blowfish.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bprint.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bprint.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bswap.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/buffer.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/buffer.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/camellia.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/camellia.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cast5.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cast5.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/channel_layout.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/channel_layout.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/color_utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/common.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cpu.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cpu.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/crc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/crc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/des.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/des.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dict.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dict.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/display.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/display.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dovi_meta.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dovi_meta.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/downmix_info.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/downmix_info.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/encryption_info.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/encryption_info.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/error.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/error.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/eval.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/eval.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ffversion.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fifo.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fifo.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file_open.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/film_grain_params.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/film_grain_params.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fixed_dsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/float_dsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/frame.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/frame.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hash.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hash.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hmac.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hmac.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_cuda.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_d3d11va.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_drm.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_dxva2.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_mediacodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_opencl.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_qsv.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vaapi.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vdpau.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_videotoolbox.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vulkan.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/imgutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/imgutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/integer.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intfloat.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intmath.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intmath.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intreadwrite.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lfg.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lfg.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lls.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log2_tab.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/macros.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mathematics.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mathematics.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/md5.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/md5.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mem.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mem.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/motion_vector.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/murmur3.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/murmur3.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/opt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/opt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/parseutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/parseutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixdesc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixdesc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixelutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixelutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixfmt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/random_seed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/random_seed.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rational.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rational.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rc4.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rc4.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/replaygain.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/reverse.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ripemd.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ripemd.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/samplefmt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/samplefmt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha512.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha512.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/slicethread.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/spherical.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/spherical.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/stereo3d.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/stereo3d.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tea.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tea.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/threadmessage.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/threadmessage.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/time.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/time.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timecode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timecode.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timer.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timestamp.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tree.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tree.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/twofish.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/twofish.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_double.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_int32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/video_enc_params.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/video_enc_params.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xga_font_data.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xtea.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xtea.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavutil" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("libavutil" PROPERTIES
    OUTPUT_NAME "libavutil"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("libavutil" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/FFmpeg
  )
  target_compile_definitions("libavutil" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
    HAVE_AV_CONFIG_H
    _USE_MATH_DEFINES
  )
  target_link_libraries("libavutil"
    android
    dl
    log
  )
  target_compile_options("libavutil" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=default>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/cpu.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_init.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aarch64/float_dsp_neon.S" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/adler32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/adler32.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes_ctr.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/aes_ctr.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/attributes.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/audio_fifo.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/audio_fifo.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avassert.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avconfig.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avsscanf.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avstring.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avstring.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/avutil.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/base64.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/base64.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/blowfish.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/blowfish.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bprint.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bprint.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/bswap.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/buffer.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/buffer.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/camellia.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/camellia.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cast5.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cast5.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/channel_layout.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/channel_layout.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/color_utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/common.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cpu.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/cpu.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/crc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/crc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/des.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/des.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dict.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dict.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/display.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/display.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dovi_meta.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/dovi_meta.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/downmix_info.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/downmix_info.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/encryption_info.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/encryption_info.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/error.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/error.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/eval.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/eval.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ffversion.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fifo.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fifo.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/file_open.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/film_grain_params.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/film_grain_params.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/fixed_dsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/float_dsp.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/frame.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/frame.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hash.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hash.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hdr_dynamic_metadata.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hmac.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hmac.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_cuda.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_d3d11va.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_drm.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_dxva2.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_mediacodec.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_opencl.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_qsv.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vaapi.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vdpau.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_videotoolbox.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/hwcontext_vulkan.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/imgutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/imgutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/integer.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intfloat.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intmath.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intmath.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/intreadwrite.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lfg.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lfg.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/lls.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/log2_tab.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/macros.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mastering_display_metadata.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mathematics.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mathematics.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/md5.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/md5.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mem.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/mem.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/motion_vector.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/murmur3.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/murmur3.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/opt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/opt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/parseutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/parseutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixdesc.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixdesc.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixelutils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixelutils.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/pixfmt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/random_seed.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/random_seed.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rational.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rational.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rc4.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/rc4.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/replaygain.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/reverse.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ripemd.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/ripemd.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/samplefmt.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/samplefmt.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha512.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/sha512.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/slicethread.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/spherical.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/spherical.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/stereo3d.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/stereo3d.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tea.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tea.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/threadmessage.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/threadmessage.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/time.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/time.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timecode.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timecode.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timer.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/timestamp.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tree.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tree.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/twofish.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/twofish.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_double.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_float.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/tx_int32.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/utils.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/version.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/video_enc_params.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/video_enc_params.h" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xga_font_data.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xtea.c" PROPERTIES COMPILE_FLAGS "-w")
  set_source_files_properties("xenia/third_party/FFmpeg/libavutil/xtea.h" PROPERTIES COMPILE_FLAGS "-w")
  set_target_properties("libavutil" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()