add_library("xenia-ui-vulkan" STATIC
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_bilinear_dither_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_bilinear_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_cas_resample_dither_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_cas_resample_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_cas_sharpen_dither_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_cas_sharpen_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_fsr_easu_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_fsr_rcas_dither_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_ffx_fsr_rcas_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/guest_output_triangle_strip_rect_vs.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/immediate_ps.h"
      "xenia/src/xenia/ui/shaders/bytecode/vulkan_spirv/immediate_vs.h"
    "xenia/src/xenia/ui/vulkan/functions/device_1_0.inc"
    "xenia/src/xenia/ui/vulkan/functions/device_1_1_khr_bind_memory2.inc"
    "xenia/src/xenia/ui/vulkan/functions/device_1_1_khr_get_memory_requirements2.inc"
    "xenia/src/xenia/ui/vulkan/functions/device_1_3_khr_maintenance4.inc"
    "xenia/src/xenia/ui/vulkan/functions/device_khr_swapchain.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_1_0.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_ext_debug_utils.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_khr_android_surface.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_1_1_khr_get_physical_device_properties2.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_khr_surface.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_khr_win32_surface.inc"
    "xenia/src/xenia/ui/vulkan/functions/instance_khr_xcb_surface.inc"
  "xenia/src/xenia/ui/vulkan/linked_type_descriptor_set_allocator.cc"
  "xenia/src/xenia/ui/vulkan/linked_type_descriptor_set_allocator.h"
  "xenia/src/xenia/ui/vulkan/single_layout_descriptor_set_pool.cc"
  "xenia/src/xenia/ui/vulkan/single_layout_descriptor_set_pool.h"
  "xenia/src/xenia/ui/vulkan/spirv_tools_context.cc"
  "xenia/src/xenia/ui/vulkan/spirv_tools_context.h"
  "xenia/src/xenia/ui/vulkan/vulkan_immediate_drawer.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_immediate_drawer.h"
  "xenia/src/xenia/ui/vulkan/vulkan_mem_alloc.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_mem_alloc.h"
  "xenia/src/xenia/ui/vulkan/vulkan_presenter.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_presenter.h"
  "xenia/src/xenia/ui/vulkan/vulkan_provider.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_provider.h"
  "xenia/src/xenia/ui/vulkan/vulkan_submission_tracker.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_submission_tracker.h"
  "xenia/src/xenia/ui/vulkan/vulkan_upload_buffer_pool.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_upload_buffer_pool.h"
  "xenia/src/xenia/ui/vulkan/vulkan_util.cc"
  "xenia/src/xenia/ui/vulkan/vulkan_util.h"
"xenia/src/xenia/ui/vulkan/ui_samplers.cc"
"xenia/src/xenia/ui/vulkan/vulkan_device.cc"
"xenia/src/xenia/ui/vulkan/vulkan_instance.cc"
)

if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-ui-vulkan"
    "xenia-base"
    "xenia-ui"
  )
  set_target_properties("xenia-ui-vulkan" PROPERTIES
    OUTPUT_NAME "xenia-ui-vulkan"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-ui-vulkan" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-ui-vulkan" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-ui-vulkan"
    xenia-base
    xenia-ui
    android
    dl
    log
  )
  target_compile_options("xenia-ui-vulkan" PRIVATE
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
  set_target_properties("xenia-ui-vulkan" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-ui-vulkan"
    "xenia-base"
    "xenia-ui"
  )
  set_target_properties("xenia-ui-vulkan" PROPERTIES
    OUTPUT_NAME "xenia-ui-vulkan"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-ui-vulkan" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-ui-vulkan" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-ui-vulkan"
    xenia-base
    xenia-ui
    android
    dl
    log
  )
  target_compile_options("xenia-ui-vulkan" PRIVATE
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
  set_target_properties("xenia-ui-vulkan" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-ui-vulkan"
    "xenia-base"
    "xenia-ui"
  )
  set_target_properties("xenia-ui-vulkan" PROPERTIES
    OUTPUT_NAME "xenia-ui-vulkan"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-ui-vulkan" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/Vulkan-Headers/include
  )
  target_compile_definitions("xenia-ui-vulkan" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-ui-vulkan"
    xenia-base
    xenia-ui
    android
    dl
    log
  )
  target_compile_options("xenia-ui-vulkan" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-ui-vulkan" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()