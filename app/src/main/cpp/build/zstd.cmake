add_library("zstd" STATIC
  "xenia/third_party/zstd/lib/common/allocations.h"
  "xenia/third_party/zstd/lib/common/bits.h"
  "xenia/third_party/zstd/lib/common/bitstream.h"
  "xenia/third_party/zstd/lib/common/compiler.h"
  "xenia/third_party/zstd/lib/common/cpu.h"
  "xenia/third_party/zstd/lib/common/debug.c"
  "xenia/third_party/zstd/lib/common/debug.h"
  "xenia/third_party/zstd/lib/common/entropy_common.c"
  "xenia/third_party/zstd/lib/common/error_private.c"
  "xenia/third_party/zstd/lib/common/error_private.h"
  "xenia/third_party/zstd/lib/common/fse.h"
  "xenia/third_party/zstd/lib/common/fse_decompress.c"
  "xenia/third_party/zstd/lib/common/huf.h"
  "xenia/third_party/zstd/lib/common/mem.h"
  "xenia/third_party/zstd/lib/common/pool.c"
  "xenia/third_party/zstd/lib/common/pool.h"
  "xenia/third_party/zstd/lib/common/portability_macros.h"
  "xenia/third_party/zstd/lib/common/threading.c"
  "xenia/third_party/zstd/lib/common/threading.h"
  "xenia/third_party/zstd/lib/common/xxhash.c"
  "xenia/third_party/zstd/lib/common/xxhash.h"
  "xenia/third_party/zstd/lib/common/zstd_common.c"
  "xenia/third_party/zstd/lib/common/zstd_deps.h"
  "xenia/third_party/zstd/lib/common/zstd_internal.h"
  "xenia/third_party/zstd/lib/common/zstd_trace.h"
  "xenia/third_party/zstd/lib/compress/clevels.h"
  "xenia/third_party/zstd/lib/compress/fse_compress.c"
  "xenia/third_party/zstd/lib/compress/hist.c"
  "xenia/third_party/zstd/lib/compress/hist.h"
  "xenia/third_party/zstd/lib/compress/huf_compress.c"
  "xenia/third_party/zstd/lib/compress/zstd_compress.c"
  "xenia/third_party/zstd/lib/compress/zstd_compress_internal.h"
  "xenia/third_party/zstd/lib/compress/zstd_compress_literals.c"
  "xenia/third_party/zstd/lib/compress/zstd_compress_literals.h"
  "xenia/third_party/zstd/lib/compress/zstd_compress_sequences.c"
  "xenia/third_party/zstd/lib/compress/zstd_compress_sequences.h"
  "xenia/third_party/zstd/lib/compress/zstd_compress_superblock.c"
  "xenia/third_party/zstd/lib/compress/zstd_compress_superblock.h"
  "xenia/third_party/zstd/lib/compress/zstd_cwksp.h"
  "xenia/third_party/zstd/lib/compress/zstd_double_fast.c"
  "xenia/third_party/zstd/lib/compress/zstd_double_fast.h"
  "xenia/third_party/zstd/lib/compress/zstd_fast.c"
  "xenia/third_party/zstd/lib/compress/zstd_fast.h"
  "xenia/third_party/zstd/lib/compress/zstd_lazy.c"
  "xenia/third_party/zstd/lib/compress/zstd_lazy.h"
  "xenia/third_party/zstd/lib/compress/zstd_ldm.c"
  "xenia/third_party/zstd/lib/compress/zstd_ldm.h"
  "xenia/third_party/zstd/lib/compress/zstd_ldm_geartab.h"
  "xenia/third_party/zstd/lib/compress/zstd_opt.c"
  "xenia/third_party/zstd/lib/compress/zstd_opt.h"
  "xenia/third_party/zstd/lib/compress/zstdmt_compress.c"
  "xenia/third_party/zstd/lib/compress/zstdmt_compress.h"
  "xenia/third_party/zstd/lib/decompress/huf_decompress.c"
  "xenia/third_party/zstd/lib/decompress/zstd_ddict.c"
  "xenia/third_party/zstd/lib/decompress/zstd_ddict.h"
  "xenia/third_party/zstd/lib/decompress/zstd_decompress.c"
  "xenia/third_party/zstd/lib/decompress/zstd_decompress_block.c"
  "xenia/third_party/zstd/lib/decompress/zstd_decompress_block.h"
  "xenia/third_party/zstd/lib/decompress/zstd_decompress_internal.h"
"xenia/third_party/zstd/lib/zstd.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  set_target_properties("zstd" PROPERTIES
    OUTPUT_NAME "zstd"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("zstd" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/zstd/lib
    xenia/third_party/zstd/lib/common
  )
  target_compile_definitions("zstd" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    XXH_NAMESPACE=ZSTD_
    ZSTD_DISABLE_ASM=1
    ZSTD_LEGACY_SUPPORT=0
  )
  target_link_libraries("zstd"
    android
    dl
    log
  )
  target_compile_options("zstd" PRIVATE
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
  set_target_properties("zstd" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("zstd" PROPERTIES
    OUTPUT_NAME "zstd"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("zstd" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/zstd/lib
    xenia/third_party/zstd/lib/common
  )
  target_compile_definitions("zstd" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
    XXH_NAMESPACE=ZSTD_
    ZSTD_DISABLE_ASM=1
    ZSTD_LEGACY_SUPPORT=0
  )
  target_link_libraries("zstd"
    android
    dl
    log
  )
  target_compile_options("zstd" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zstd" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  set_target_properties("zstd" PROPERTIES
    OUTPUT_NAME "zstd"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("zstd" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/zstd/lib
    xenia/third_party/zstd/lib/common
  )
  target_compile_definitions("zstd" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
    XXH_NAMESPACE=ZSTD_
    ZSTD_DISABLE_ASM=1
    ZSTD_LEGACY_SUPPORT=0
  )
  target_link_libraries("zstd"
    android
    dl
    log
  )
  target_compile_options("zstd" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
  )
  set_target_properties("zstd" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()