add_executable("xenia-gpu-shader-compiler"
  "xenia/src/xenia/base/console_app_main_android.cc"
  "xenia/src/xenia/gpu/shader_compiler_main.cc"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-gpu-shader-compiler"
    "dxbc"
    "fmt"
    "glslang-spirv"
    "snappy"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
  )
  set_target_properties("xenia-gpu-shader-compiler" PROPERTIES
    OUTPUT_NAME "xenia-gpu-shader-compiler"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-gpu-shader-compiler" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-shader-compiler" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
  )
  target_link_libraries("xenia-gpu-shader-compiler"
    dxbc
    fmt
    glslang-spirv
    snappy
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-shader-compiler" PRIVATE
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
  set_target_properties("xenia-gpu-shader-compiler" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-gpu-shader-compiler"
    "dxbc"
    "fmt"
    "glslang-spirv"
    "snappy"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
  )
  set_target_properties("xenia-gpu-shader-compiler" PROPERTIES
    OUTPUT_NAME "xenia-gpu-shader-compiler"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-gpu-shader-compiler" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-shader-compiler" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu-shader-compiler"
    dxbc
    fmt
    glslang-spirv
    snappy
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-shader-compiler" PRIVATE
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
  set_target_properties("xenia-gpu-shader-compiler" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-gpu-shader-compiler"
    "dxbc"
    "fmt"
    "glslang-spirv"
    "snappy"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
  )
  set_target_properties("xenia-gpu-shader-compiler" PROPERTIES
    OUTPUT_NAME "xenia-gpu-shader-compiler"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-gpu-shader-compiler" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-shader-compiler" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu-shader-compiler"
    dxbc
    fmt
    glslang-spirv
    snappy
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-shader-compiler" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-gpu-shader-compiler" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()