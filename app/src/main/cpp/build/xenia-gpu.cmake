add_library("xenia-gpu" STATIC
"xenia/src/xenia/gpu/command_processor.cc"
"xenia/src/xenia/gpu/command_processor.h"
"xenia/src/xenia/gpu/draw_extent_estimator.cc"
"xenia/src/xenia/gpu/draw_extent_estimator.h"
"xenia/src/xenia/gpu/draw_util.cc"
"xenia/src/xenia/gpu/draw_util.h"
"xenia/src/xenia/gpu/dxbc.h"
"xenia/src/xenia/gpu/dxbc_shader.cc"
"xenia/src/xenia/gpu/dxbc_shader.h"
"xenia/src/xenia/gpu/dxbc_shader_translator.cc"
"xenia/src/xenia/gpu/dxbc_shader_translator.h"
"xenia/src/xenia/gpu/dxbc_shader_translator_alu.cc"
"xenia/src/xenia/gpu/dxbc_shader_translator_fetch.cc"
"xenia/src/xenia/gpu/dxbc_shader_translator_memexport.cc"
"xenia/src/xenia/gpu/dxbc_shader_translator_om.cc"
"xenia/src/xenia/gpu/gpu_flags.cc"
"xenia/src/xenia/gpu/gpu_flags.h"
"xenia/src/xenia/gpu/graphics_system.cc"
"xenia/src/xenia/gpu/graphics_system.h"
"xenia/src/xenia/gpu/packet_disassembler.cc"
"xenia/src/xenia/gpu/packet_disassembler.h"
"xenia/src/xenia/gpu/primitive_processor.cc"
"xenia/src/xenia/gpu/primitive_processor.h"
"xenia/src/xenia/gpu/register_file.cc"
"xenia/src/xenia/gpu/register_file.h"
"xenia/src/xenia/gpu/register_table.inc"
"xenia/src/xenia/gpu/registers.cc"
"xenia/src/xenia/gpu/registers.h"
"xenia/src/xenia/gpu/render_target_cache.cc"
"xenia/src/xenia/gpu/render_target_cache.h"
"xenia/src/xenia/gpu/sampler_info.cc"
"xenia/src/xenia/gpu/sampler_info.h"
"xenia/src/xenia/gpu/shader.cc"
"xenia/src/xenia/gpu/shader.h"
"xenia/src/xenia/gpu/shader_interpreter.cc"
"xenia/src/xenia/gpu/shader_interpreter.h"
"xenia/src/xenia/gpu/shader_translator.cc"
"xenia/src/xenia/gpu/shader_translator.h"
"xenia/src/xenia/gpu/shader_translator_disasm.cc"
"xenia/src/xenia/gpu/shared_memory.cc"
"xenia/src/xenia/gpu/shared_memory.h"
"xenia/src/xenia/gpu/spirv_builder.cc"
"xenia/src/xenia/gpu/spirv_builder.h"
"xenia/src/xenia/gpu/spirv_shader.cc"
"xenia/src/xenia/gpu/spirv_shader.h"
"xenia/src/xenia/gpu/spirv_shader_translator.cc"
"xenia/src/xenia/gpu/spirv_shader_translator.h"
"xenia/src/xenia/gpu/spirv_shader_translator_alu.cc"
"xenia/src/xenia/gpu/spirv_shader_translator_fetch.cc"
"xenia/src/xenia/gpu/spirv_shader_translator_rb.cc"
"xenia/src/xenia/gpu/texture_cache.cc"
"xenia/src/xenia/gpu/texture_cache.h"
"xenia/src/xenia/gpu/texture_conversion.cc"
"xenia/src/xenia/gpu/texture_conversion.h"
"xenia/src/xenia/gpu/texture_dump.cc"
"xenia/src/xenia/gpu/texture_extent.cc"
"xenia/src/xenia/gpu/texture_info.cc"
"xenia/src/xenia/gpu/texture_info.h"
"xenia/src/xenia/gpu/texture_info_formats.cc"
"xenia/src/xenia/gpu/texture_util.cc"
"xenia/src/xenia/gpu/texture_util.h"
"xenia/src/xenia/gpu/trace_dump.cc"
"xenia/src/xenia/gpu/trace_dump.h"
"xenia/src/xenia/gpu/trace_player.cc"
"xenia/src/xenia/gpu/trace_player.h"
"xenia/src/xenia/gpu/trace_protocol.h"
"xenia/src/xenia/gpu/trace_reader.cc"
"xenia/src/xenia/gpu/trace_reader.h"
"xenia/src/xenia/gpu/trace_viewer.cc"
"xenia/src/xenia/gpu/trace_viewer.h"
"xenia/src/xenia/gpu/trace_writer.cc"
"xenia/src/xenia/gpu/trace_writer.h"
"xenia/src/xenia/gpu/ucode.cc"
"xenia/src/xenia/gpu/ucode.h"
"xenia/src/xenia/gpu/xenos.cc"
"xenia/src/xenia/gpu/xenos.h"
        "xenia/src/xenia/gpu/spirv_shader_translator_memexport.cc"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-gpu"
    "dxbc"
    "fmt"
    "glslang-spirv"
    "snappy"
    "xenia-base"
    "xenia-ui"
    "xxhash"
  )
  set_target_properties("xenia-gpu" PROPERTIES
    OUTPUT_NAME "xenia-gpu"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-gpu" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-gpu"
    dxbc
    fmt
    glslang-spirv
    snappy
    xenia-base
    xenia-ui
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu" PRIVATE
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
  set_target_properties("xenia-gpu" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-gpu"
    "dxbc"
    "fmt"
    "glslang-spirv"
    "snappy"
    "xenia-base"
    "xenia-ui"
    "xxhash"
  )
  set_target_properties("xenia-gpu" PROPERTIES
    OUTPUT_NAME "xenia-gpu"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-gpu" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu"
    dxbc
    fmt
    glslang-spirv
    snappy
    xenia-base
    xenia-ui
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu" PRIVATE
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
  set_target_properties("xenia-gpu" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-gpu"
    "dxbc"
    "fmt"
    "glslang-spirv"
    "snappy"
    "xenia-base"
    "xenia-ui"
    "xxhash"
  )
  set_target_properties("xenia-gpu" PROPERTIES
    OUTPUT_NAME "xenia-gpu"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-gpu" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu"
    dxbc
    fmt
    glslang-spirv
    snappy
    xenia-base
    xenia-ui
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-gpu" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()