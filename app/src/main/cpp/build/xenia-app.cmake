add_executable("xenia-app"
  "xenia/src/xenia/app/emulator_window.cc"
  "xenia/src/xenia/app/emulator_window.h"
  "xenia/src/xenia/app/profile_dialogs.cc"
  "xenia/src/xenia/app/profile_dialogs.h"
  "xenia/src/xenia/base/main_init_android.cc"
  "xenia/src/xenia/ui/windowed_app_main_android.cc"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-app"
    "xenia-apu"
    "xenia-apu-nop"
    "xenia-base"
    "xenia-core"
    "xenia-cpu"
    "xenia-gpu"
    "xenia-gpu-null"
    "xenia-gpu-vulkan"
    "xenia-hid"
    "xenia-hid-nop"
    "xenia-kernel"
    "xenia-patcher"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xenia-vfs"
    "aes_128"
    "capstone"
    "fmt"
    "dxbc"
    "discord-rpc"
    "glslang-spirv"
    "imgui"
    "libavcodec"
    "libavutil"
    "mspack"
    "snappy"
    "xxhash"
    "xenia-cpu-backend-a64"
  )
  set_target_properties("xenia-app" PROPERTIES
    OUTPUT_NAME "xenia-app"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-app" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-app" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    XBYAK_NO_OP_NAMES
    XBYAK_ENABLE_OMITTED_OPERAND
  )
  target_link_libraries("xenia-app"
    xenia-apu
    xenia-apu-nop
    xenia-base
    xenia-core
    xenia-cpu
    xenia-gpu
    xenia-gpu-null
    xenia-gpu-vulkan
    xenia-hid
    xenia-hid-nop
    xenia-kernel
    xenia-patcher
    xenia-ui
    xenia-ui-vulkan
    xenia-vfs
    aes_128
    capstone
    fmt
    dxbc
    discord-rpc
    glslang-spirv
    imgui
    libavcodec
    libavutil
    mspack
    snappy
    xxhash
    xenia-cpu-backend-a64
    android
    dl
    log
  )
  target_compile_options("xenia-app" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fPIC>
    $<$<COMPILE_LANGUAGE:C>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
    $<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-app" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-app"
    "xenia-apu"
    "xenia-apu-nop"
    "xenia-base"
    "xenia-core"
    "xenia-cpu"
    "xenia-gpu"
    "xenia-gpu-null"
    "xenia-gpu-vulkan"
    "xenia-hid"
    "xenia-hid-nop"
    "xenia-kernel"
    "xenia-patcher"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xenia-vfs"
    "aes_128"
    "capstone"
    "fmt"
    "dxbc"
    "discord-rpc"
    "glslang-spirv"
    "imgui"
    "libavcodec"
    "libavutil"
    "mspack"
    "snappy"
    "xxhash"
    "xenia-cpu-backend-a64"
  )
  set_target_properties("xenia-app" PROPERTIES
    OUTPUT_NAME "xenia-app"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-app" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-app" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    _NO_DEBUG_HEAP=1
    XBYAK_NO_OP_NAMES
    XBYAK_ENABLE_OMITTED_OPERAND
  )
  target_link_libraries("xenia-app"
    xenia-apu
    xenia-apu-nop
    xenia-base
    xenia-core
    xenia-cpu
    xenia-gpu
    xenia-gpu-null
    xenia-gpu-vulkan
    xenia-hid
    xenia-hid-nop
    xenia-kernel
    xenia-patcher
    xenia-ui
    xenia-ui-vulkan
    xenia-vfs
    aes_128
    capstone
    fmt
    dxbc
    discord-rpc
    glslang-spirv
    imgui
    libavcodec
    libavutil
    mspack
    snappy
    xxhash
    xenia-cpu-backend-a64
    android
    dl
    log
  )
  target_compile_options("xenia-app" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-fPIC>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-app" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-app"
    "xenia-apu"
    "xenia-apu-nop"
    "xenia-base"
    "xenia-core"
    "xenia-cpu"
    "xenia-gpu"
    "xenia-gpu-null"
    "xenia-gpu-vulkan"
    "xenia-hid"
    "xenia-hid-nop"
    "xenia-kernel"
    "xenia-patcher"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xenia-vfs"
    "aes_128"
    "capstone"
    "fmt"
    "dxbc"
    "discord-rpc"
    "glslang-spirv"
    "imgui"
    "libavcodec"
    "libavutil"
    "mspack"
    "snappy"
    "xxhash"
    "xenia-cpu-backend-a64"
  )
  set_target_properties("xenia-app" PROPERTIES
    OUTPUT_NAME "xenia-app"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-app" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-app" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    NDEBUG
    _NO_DEBUG_HEAP=1
    XBYAK_NO_OP_NAMES
    XBYAK_ENABLE_OMITTED_OPERAND
  )
  target_link_libraries("xenia-app"
    xenia-apu
    xenia-apu-nop
    xenia-base
    xenia-core
    xenia-cpu
    xenia-gpu
    xenia-gpu-null
    xenia-gpu-vulkan
    xenia-hid
    xenia-hid-nop
    xenia-kernel
    xenia-patcher
    xenia-ui
    xenia-ui-vulkan
    xenia-vfs
    aes_128
    capstone
    fmt
    dxbc
    discord-rpc
    glslang-spirv
    imgui
    libavcodec
    libavutil
    mspack
    snappy
    xxhash
    xenia-cpu-backend-a64
    android
    dl
    log
  )
  target_compile_options("xenia-app" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fPIC>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fPIC>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-app" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE True
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()