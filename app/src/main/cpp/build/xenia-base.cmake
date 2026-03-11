add_library("xenia-base" STATIC
"xenia/src/xenia/base/arena.cc"
"xenia/src/xenia/base/arena.h"
"xenia/src/xenia/base/assert.h"
"xenia/src/xenia/base/atomic.h"
"xenia/src/xenia/base/bit_map.cc"
"xenia/src/xenia/base/bit_map.h"
"xenia/src/xenia/base/bit_range.h"
"xenia/src/xenia/base/bit_stream.cc"
"xenia/src/xenia/base/bit_stream.h"
"xenia/src/xenia/base/byte_order.h"
"xenia/src/xenia/base/byte_stream.cc"
"xenia/src/xenia/base/byte_stream.h"
"xenia/src/xenia/base/chrono.h"
"xenia/src/xenia/base/chrono_steady_cast.h"
"xenia/src/xenia/base/clock.cc"
"xenia/src/xenia/base/clock.h"
"xenia/src/xenia/base/clock_posix.cc"
"xenia/src/xenia/base/clock_x64.cc"
"xenia/src/xenia/base/console.h"
"xenia/src/xenia/base/console_app_main.h"
"xenia/src/xenia/base/console_posix.cc"
"xenia/src/xenia/base/cvar.cc"
"xenia/src/xenia/base/cvar.h"
"xenia/src/xenia/base/cvar_android.cc"
"xenia/src/xenia/base/debug_visualizers.natvis"
"xenia/src/xenia/base/debugging.h"
"xenia/src/xenia/base/debugging_posix.cc"
"xenia/src/xenia/base/delegate.h"
"xenia/src/xenia/base/exception_handler.cc"
"xenia/src/xenia/base/exception_handler.h"
"xenia/src/xenia/base/exception_handler_posix.cc"
"xenia/src/xenia/base/filesystem.cc"
"xenia/src/xenia/base/filesystem.h"
"xenia/src/xenia/base/filesystem_posix.cc"
"xenia/src/xenia/base/filesystem_wildcard.cc"
"xenia/src/xenia/base/filesystem_wildcard.h"
"xenia/src/xenia/base/fuzzy.cc"
"xenia/src/xenia/base/fuzzy.h"
"xenia/src/xenia/base/hash.h"
"xenia/src/xenia/base/host_thread_context.cc"
"xenia/src/xenia/base/host_thread_context.h"
"xenia/src/xenia/base/literals.h"
"xenia/src/xenia/base/logging.cc"
"xenia/src/xenia/base/logging.h"
"xenia/src/xenia/base/mapped_memory.h"
"xenia/src/xenia/base/mapped_memory_posix.cc"
"xenia/src/xenia/base/math.h"
"xenia/src/xenia/base/memory.cc"
"xenia/src/xenia/base/memory.h"
"xenia/src/xenia/base/memory_posix.cc"
"xenia/src/xenia/base/mutex.cc"
"xenia/src/xenia/base/mutex.h"
"xenia/src/xenia/base/platform.h"
"xenia/src/xenia/base/platform_linux.h"
"xenia/src/xenia/base/profiling.cc"
"xenia/src/xenia/base/profiling.h"
        "xenia/src/xenia/base/png_utils.cc"
"xenia/src/xenia/base/reset_scope.h"
"xenia/src/xenia/base/ring_buffer.cc"
"xenia/src/xenia/base/ring_buffer.h"
"xenia/src/xenia/base/socket.h"
"xenia/src/xenia/base/string.cc"
"xenia/src/xenia/base/string.h"
"xenia/src/xenia/base/string_buffer.cc"
"xenia/src/xenia/base/string_buffer.h"
"xenia/src/xenia/base/string_key.h"
"xenia/src/xenia/base/string_util.h"
"xenia/src/xenia/base/system.h"
"xenia/src/xenia/base/threading.cc"
"xenia/src/xenia/base/threading.h"
"xenia/src/xenia/base/threading_posix.cc"
"xenia/src/xenia/base/threading_timer_queue.cc"
"xenia/src/xenia/base/threading_timer_queue.h"
"xenia/src/xenia/base/type_pool.h"
"xenia/src/xenia/base/utf8.cc"
"xenia/src/xenia/base/utf8.h"
"xenia/src/xenia/base/vec128.cc"
"xenia/src/xenia/base/vec128.h"
"xenia/src/xenia/base/xxhash.h"
)
#"xenia/src/xenia/base/filesystem_android.cc"
#"xenia/src/xenia/base/platform_amd64.cc"
#"xenia/src/xenia/base/platform_amd64.h"
#"xenia/src/xenia/base/main_android.cc"
#"xenia/src/xenia/base/main_android.h"
#"xenia/src/xenia/base/system_android.cc"


if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-base"
    "fmt"
  )
  set_target_properties("xenia-base" PROPERTIES
    OUTPUT_NAME "xenia-base"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-base" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-base" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-base"
    fmt
    android
    dl
    log
  )
  target_compile_options("xenia-base" PRIVATE
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
  set_target_properties("xenia-base" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-base"
    "fmt"
  )
  set_target_properties("xenia-base" PROPERTIES
    OUTPUT_NAME "xenia-base"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-base" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-base" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-base"
    fmt
    android
    dl
    log
  )
  target_compile_options("xenia-base" PRIVATE
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
  set_target_properties("xenia-base" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-base"
    "fmt"
  )
  set_target_properties("xenia-base" PROPERTIES
    OUTPUT_NAME "xenia-base"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-base" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-base" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-base"
    fmt
    android
    dl
    log
  )
  target_compile_options("xenia-base" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-base" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()