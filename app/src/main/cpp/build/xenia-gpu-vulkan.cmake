add_library("xenia-gpu-vulkan" STATIC
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_pwl_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_pwl_fxaa_luma_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_pwl_fxaa_luma_ps.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_pwl_ps.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_table_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_table_fxaa_luma_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_table_fxaa_luma_ps.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/apply_gamma_table_ps.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/fullscreen_cw_vs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/host_depth_store_1xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/host_depth_store_2xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/host_depth_store_4xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/passthrough_position_xy_vs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_clear_32bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_clear_32bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_clear_64bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_clear_64bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_32bpp_1x2xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_32bpp_1x2xmsaa_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_32bpp_4xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_32bpp_4xmsaa_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_64bpp_1x2xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_64bpp_1x2xmsaa_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_64bpp_4xmsaa_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_fast_64bpp_4xmsaa_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_128bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_128bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_16bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_16bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_32bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_32bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_64bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_64bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_8bpp_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/resolve_full_8bpp_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_128bpb_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_128bpb_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_16bpb_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_16bpb_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_32bpb_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_32bpb_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_64bpb_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_64bpb_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_8bpb_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_8bpb_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_bgrg8_rgb8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_bgrg8_rgbg8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_ctx1_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_depth_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_depth_float_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_depth_unorm_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_depth_unorm_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxn_rg8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt1_rgba8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt3_rgba8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt3a_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt3aas1111_argb4_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt3aas1111_bgra4_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt5_rgba8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_dxt5a_r8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_gbgr8_grgb8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_gbgr8_rgb8_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r10g11b11_rgba16_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r10g11b11_rgba16_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r10g11b11_rgba16_snorm_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r10g11b11_rgba16_snorm_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r11g11b10_rgba16_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r11g11b10_rgba16_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r11g11b10_rgba16_snorm_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r11g11b10_rgba16_snorm_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r16_snorm_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r16_snorm_float_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r16_unorm_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r16_unorm_float_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r4g4b4a4_a4r4g4b4_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r4g4b4a4_a4r4g4b4_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r4g4b4a4_b4g4r4a4_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r4g4b4a4_b4g4r4a4_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r5g5b5a1_b5g5r5a1_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r5g5b5a1_b5g5r5a1_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r5g5b6_b5g6r5_swizzle_rbga_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r5g5b6_b5g6r5_swizzle_rbga_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r5g6b5_b5g6r5_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_r5g6b5_b5g6r5_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rg16_snorm_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rg16_snorm_float_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rg16_unorm_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rg16_unorm_float_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rgba16_snorm_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rgba16_snorm_float_scaled_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rgba16_unorm_float_cs.h"
      "xenia/src/xenia/gpu/shaders/bytecode/vulkan_spirv/texture_load_rgba16_unorm_float_scaled_cs.h"
  "xenia/src/xenia/gpu/vulkan/deferred_command_buffer.cc"
  "xenia/src/xenia/gpu/vulkan/deferred_command_buffer.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_command_processor.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_command_processor.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_graphics_system.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_graphics_system.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_pipeline_cache.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_pipeline_cache.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_primitive_processor.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_primitive_processor.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_render_target_cache.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_render_target_cache.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_shader.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_shader.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_shared_memory.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_shared_memory.h"
  "xenia/src/xenia/gpu/vulkan/vulkan_texture_cache.cc"
  "xenia/src/xenia/gpu/vulkan/vulkan_texture_cache.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-gpu-vulkan"
    "fmt"
    "glslang-spirv"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xxhash"
  )
  set_target_properties("xenia-gpu-vulkan" PROPERTIES
    OUTPUT_NAME "xenia-gpu-vulkan"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-gpu-vulkan" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-vulkan" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-gpu-vulkan"
    fmt
    glslang-spirv
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-vulkan" PRIVATE
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
  set_target_properties("xenia-gpu-vulkan" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-gpu-vulkan"
    "fmt"
    "glslang-spirv"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xxhash"
  )
  set_target_properties("xenia-gpu-vulkan" PROPERTIES
    OUTPUT_NAME "xenia-gpu-vulkan"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-gpu-vulkan" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-vulkan" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu-vulkan"
    fmt
    glslang-spirv
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-vulkan" PRIVATE
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
  set_target_properties("xenia-gpu-vulkan" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-gpu-vulkan"
    "fmt"
    "glslang-spirv"
    "xenia-base"
    "xenia-gpu"
    "xenia-ui"
    "xenia-ui-vulkan"
    "xxhash"
  )
  set_target_properties("xenia-gpu-vulkan" PROPERTIES
    OUTPUT_NAME "xenia-gpu-vulkan"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-gpu-vulkan" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-gpu-vulkan" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-gpu-vulkan"
    fmt
    glslang-spirv
    xenia-base
    xenia-gpu
    xenia-ui
    xenia-ui-vulkan
    xxhash
    android
    dl
    log
  )
  target_compile_options("xenia-gpu-vulkan" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-gpu-vulkan" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()