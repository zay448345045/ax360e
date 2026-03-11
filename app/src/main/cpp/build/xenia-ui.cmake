add_library("xenia-ui" STATIC
"xenia/src/xenia/ui/file_picker.h"
"xenia/src/xenia/ui/file_picker_android.cc"
"xenia/src/xenia/ui/graphics_provider.h"
"xenia/src/xenia/ui/graphics_upload_buffer_pool.cc"
"xenia/src/xenia/ui/graphics_upload_buffer_pool.h"
"xenia/src/xenia/ui/graphics_util.cc"
"xenia/src/xenia/ui/graphics_util.h"
"xenia/src/xenia/ui/imgui_dialog.cc"
"xenia/src/xenia/ui/imgui_dialog.h"
"xenia/src/xenia/ui/imgui_drawer.cc"
"xenia/src/xenia/ui/imgui_drawer.h"
        "xenia/src/xenia/ui/imgui_guest_notification.cc"
        "xenia/src/xenia/ui/imgui_host_notification.cc"
        "xenia/src/xenia/ui/imgui_notification.cc"
"xenia/src/xenia/ui/immediate_drawer.cc"
"xenia/src/xenia/ui/immediate_drawer.h"
"xenia/src/xenia/ui/menu_item.cc"
"xenia/src/xenia/ui/menu_item.h"
"xenia/src/xenia/ui/microprofile_drawer.cc"
"xenia/src/xenia/ui/microprofile_drawer.h"
"xenia/src/xenia/ui/presenter.cc"
"xenia/src/xenia/ui/presenter.h"
"xenia/src/xenia/ui/renderdoc_api.cc"
"xenia/src/xenia/ui/renderdoc_api.h"
"xenia/src/xenia/ui/surface.h"
"xenia/src/xenia/ui/surface_android.cc"
"xenia/src/xenia/ui/surface_android.h"
"xenia/src/xenia/ui/ui_drawer.h"
"xenia/src/xenia/ui/ui_event.h"
"xenia/src/xenia/ui/virtual_key.h"
"xenia/src/xenia/ui/window.cc"
"xenia/src/xenia/ui/window.h"
"xenia/src/xenia/ui/window_listener.h"
"xenia/src/xenia/ui/windowed_app.cc"
"xenia/src/xenia/ui/windowed_app.h"
"xenia/src/xenia/ui/windowed_app_context.cc"
"xenia/src/xenia/ui/windowed_app_context.h"
)
#"xenia/src/xenia/ui/window_demo.h"
#"xenia/src/xenia/ui/window_android.cc"
#"xenia/src/xenia/ui/window_android.h"
#"xenia/src/xenia/ui/windowed_app_context_android.cc"
#"xenia/src/xenia/ui/windowed_app_context_android.h"
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-ui"
    "xenia-base"
  )
  set_target_properties("xenia-ui" PROPERTIES
    OUTPUT_NAME "xenia-ui"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-ui" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-ui" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-ui"
    xenia-base
    android
    dl
    log
  )
  target_compile_options("xenia-ui" PRIVATE
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
  set_target_properties("xenia-ui" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-ui"
    "xenia-base"
  )
  set_target_properties("xenia-ui" PROPERTIES
    OUTPUT_NAME "xenia-ui"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-ui" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-ui" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-ui"
    xenia-base
    android
    dl
    log
  )
  target_compile_options("xenia-ui" PRIVATE
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
  set_target_properties("xenia-ui" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-ui"
    "xenia-base"
  )
  set_target_properties("xenia-ui" PROPERTIES
    OUTPUT_NAME "xenia-ui"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-ui" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-ui" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-ui"
    xenia-base
    android
    dl
    log
  )
  target_compile_options("xenia-ui" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-ui" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
