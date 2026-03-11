add_library("xenia-kernel" STATIC
"xenia/src/xenia/kernel/debug_visualizers.natvis"
  "xenia/src/xenia/kernel/info/file.h"
  "xenia/src/xenia/kernel/info/volume.h"
"xenia/src/xenia/kernel/kernel_flags.cc"
"xenia/src/xenia/kernel/kernel_flags.h"
"xenia/src/xenia/kernel/kernel_module.cc"
"xenia/src/xenia/kernel/kernel_module.h"
"xenia/src/xenia/kernel/kernel_state.cc"
"xenia/src/xenia/kernel/kernel_state.h"
        "xenia/src/xenia/kernel/smc.cc"
"xenia/src/xenia/kernel/user_module.cc"
"xenia/src/xenia/kernel/user_module.h"
        "xenia/src/xenia/kernel/util/crypto_utils.cc"
  "xenia/src/xenia/kernel/util/export_table_post.inc"
  "xenia/src/xenia/kernel/util/export_table_pre.inc"
        "xenia/src/xenia/kernel/util/game_info_database.cc"
        "xenia/src/xenia/kernel/util/guest_object_table.cc"
  "xenia/src/xenia/kernel/util/native_list.cc"
  "xenia/src/xenia/kernel/util/native_list.h"
  "xenia/src/xenia/kernel/util/object_table.cc"
  "xenia/src/xenia/kernel/util/object_table.h"
  "xenia/src/xenia/kernel/util/ordinal_table_post.inc"
  "xenia/src/xenia/kernel/util/ordinal_table_pre.inc"
        "xenia/src/xenia/kernel/util/presence_string_builder.cc"
  "xenia/src/xenia/kernel/util/shim_utils.cc"
  "xenia/src/xenia/kernel/util/shim_utils.h"
  "xenia/src/xenia/kernel/util/xex2_info.h"
        "xenia/src/xenia/kernel/util/xlast.cc"
        "xenia/src/xenia/kernel/xam/achievement_manager.cc"
  "xenia/src/xenia/kernel/xam/app_manager.cc"
  "xenia/src/xenia/kernel/xam/app_manager.h"
        "xenia/src/xenia/kernel/xam/achievement_backends/gpd_achievement_backend.cc"
        "xenia/src/xenia/kernel/xam/apps/messenger_app.cc"
    "xenia/src/xenia/kernel/xam/apps/xam_app.cc"
    "xenia/src/xenia/kernel/xam/apps/xam_app.h"
    "xenia/src/xenia/kernel/xam/apps/xgi_app.cc"
    "xenia/src/xenia/kernel/xam/apps/xgi_app.h"
    "xenia/src/xenia/kernel/xam/apps/xlivebase_app.cc"
    "xenia/src/xenia/kernel/xam/apps/xlivebase_app.h"
    "xenia/src/xenia/kernel/xam/apps/xmp_app.cc"
    "xenia/src/xenia/kernel/xam/apps/xmp_app.h"
        "xenia/src/xenia/kernel/xam/ui/create_profile_ui.cc"
        "xenia/src/xenia/kernel/xam/ui/game_achievements_ui.cc"
        "xenia/src/xenia/kernel/xam/ui/gamercard_ui.cc"
        "xenia/src/xenia/kernel/xam/ui/passcode_ui.cc"
        "xenia/src/xenia/kernel/xam/ui/signin_ui.cc"
        "xenia/src/xenia/kernel/xam/ui/title_info_ui.cc"
        "xenia/src/xenia/kernel/xam/xdbf/gpd_info.cc"
        "xenia/src/xenia/kernel/xam/xdbf/gpd_info_profile.cc"
        "xenia/src/xenia/kernel/xam/xdbf/gpd_info_title.cc"
        "xenia/src/xenia/kernel/xam/xdbf/spa_info.cc"
        "xenia/src/xenia/kernel/xam/xdbf/xdbf_io.cc"
  "xenia/src/xenia/kernel/xam/content_manager.cc"
  "xenia/src/xenia/kernel/xam/content_manager.h"
        "xenia/src/xenia/kernel/xam/profile_manager.cc"
        "xenia/src/xenia/kernel/xam/user_data.cc"
  "xenia/src/xenia/kernel/xam/user_profile.cc"
  "xenia/src/xenia/kernel/xam/user_profile.h"
        "xenia/src/xenia/kernel/xam/user_property.cc"
        "xenia/src/xenia/kernel/xam/user_settings.cc"
        "xenia/src/xenia/kernel/xam/user_tracker.cc"
  "xenia/src/xenia/kernel/xam/xam_avatar.cc"
  "xenia/src/xenia/kernel/xam/xam_content.cc"
  "xenia/src/xenia/kernel/xam/xam_content_aggregate.cc"
  "xenia/src/xenia/kernel/xam/xam_content_device.cc"
  "xenia/src/xenia/kernel/xam/xam_content_device.h"
  "xenia/src/xenia/kernel/xam/xam_enum.cc"
  "xenia/src/xenia/kernel/xam/xam_info.cc"
  "xenia/src/xenia/kernel/xam/xam_input.cc"
  "xenia/src/xenia/kernel/xam/xam_locale.cc"
        "xenia/src/xenia/kernel/xam/xam_media.cc"
  "xenia/src/xenia/kernel/xam/xam_module.cc"
  "xenia/src/xenia/kernel/xam/xam_module.h"
  "xenia/src/xenia/kernel/xam/xam_module_export_groups.inc"
  "xenia/src/xenia/kernel/xam/xam_msg.cc"
  "xenia/src/xenia/kernel/xam/xam_net.cc"
  "xenia/src/xenia/kernel/xam/xam_notify.cc"
  "xenia/src/xenia/kernel/xam/xam_nui.cc"
  "xenia/src/xenia/kernel/xam/xam_ordinals.h"
  "xenia/src/xenia/kernel/xam/xam_party.cc"
  "xenia/src/xenia/kernel/xam/xam_private.h"
        "xenia/src/xenia/kernel/xam/xam_profile.cc"
        "xenia/src/xenia/kernel/xam/xam_state.cc"
  "xenia/src/xenia/kernel/xam/xam_table.inc"
  "xenia/src/xenia/kernel/xam/xam_task.cc"
  "xenia/src/xenia/kernel/xam/xam_ui.cc"
  "xenia/src/xenia/kernel/xam/xam_user.cc"
  "xenia/src/xenia/kernel/xam/xam_video.cc"
  "xenia/src/xenia/kernel/xam/xam_voice.cc"
  "xenia/src/xenia/kernel/xbdm/xbdm_misc.cc"
  "xenia/src/xenia/kernel/xbdm/xbdm_module.cc"
  "xenia/src/xenia/kernel/xbdm/xbdm_module.h"
  "xenia/src/xenia/kernel/xbdm/xbdm_module_export_groups.inc"
  "xenia/src/xenia/kernel/xbdm/xbdm_ordinals.h"
  "xenia/src/xenia/kernel/xbdm/xbdm_private.h"
  "xenia/src/xenia/kernel/xbdm/xbdm_table.inc"
  "xenia/src/xenia/kernel/xboxkrnl/cert_monitor.cc"
  "xenia/src/xenia/kernel/xboxkrnl/cert_monitor.h"
  "xenia/src/xenia/kernel/xboxkrnl/debug_monitor.cc"
  "xenia/src/xenia/kernel/xboxkrnl/debug_monitor.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_audio.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_audio_xma.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_crypt.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_debug.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_error.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_error.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_hal.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_hid.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_io.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_io_info.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_memory.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_misc.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_module.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_module.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_module_export_groups.inc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_modules.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_ob.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_ordinals.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_private.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_rtl.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_rtl.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_strings.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_table.inc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_threading.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_threading.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_usbcam.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_video.cc"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_video.h"
  "xenia/src/xenia/kernel/xboxkrnl/xboxkrnl_xconfig.cc"
"xenia/src/xenia/kernel/xenumerator.cc"
"xenia/src/xenia/kernel/xenumerator.h"
"xenia/src/xenia/kernel/xevent.cc"
"xenia/src/xenia/kernel/xevent.h"
"xenia/src/xenia/kernel/xfile.cc"
"xenia/src/xenia/kernel/xfile.h"
"xenia/src/xenia/kernel/xiocompletion.cc"
"xenia/src/xenia/kernel/xiocompletion.h"
"xenia/src/xenia/kernel/xmodule.cc"
"xenia/src/xenia/kernel/xmodule.h"
"xenia/src/xenia/kernel/xmutant.cc"
"xenia/src/xenia/kernel/xmutant.h"
"xenia/src/xenia/kernel/xnotifylistener.cc"
"xenia/src/xenia/kernel/xnotifylistener.h"
"xenia/src/xenia/kernel/xobject.cc"
"xenia/src/xenia/kernel/xobject.h"
"xenia/src/xenia/kernel/xsemaphore.cc"
"xenia/src/xenia/kernel/xsemaphore.h"
"xenia/src/xenia/kernel/xsocket.cc"
"xenia/src/xenia/kernel/xsocket.h"
"xenia/src/xenia/kernel/xsymboliclink.cc"
"xenia/src/xenia/kernel/xsymboliclink.h"
"xenia/src/xenia/kernel/xthread.cc"
"xenia/src/xenia/kernel/xthread.h"
"xenia/src/xenia/kernel/xtimer.cc"
"xenia/src/xenia/kernel/xtimer.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-kernel"
    "aes_128"
    "fmt"
    "xenia-apu"
    "xenia-base"
    "xenia-cpu"
    "xenia-hid"
    "xenia-vfs"
  )
  set_target_properties("xenia-kernel" PROPERTIES
    OUTPUT_NAME "xenia-kernel"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-kernel" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-kernel" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
  )
  target_link_libraries("xenia-kernel"
    aes_128
    fmt
    xenia-apu
    xenia-base
    xenia-cpu
    xenia-hid
    xenia-vfs
    android
    dl
    log
  )
  target_compile_options("xenia-kernel" PRIVATE
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
  set_target_properties("xenia-kernel" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-kernel"
    "aes_128"
    "fmt"
    "xenia-apu"
    "xenia-base"
    "xenia-cpu"
    "xenia-hid"
    "xenia-vfs"
  )
  set_target_properties("xenia-kernel" PROPERTIES
    OUTPUT_NAME "xenia-kernel"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-kernel" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-kernel" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    DEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-kernel"
    aes_128
    fmt
    xenia-apu
    xenia-base
    xenia-cpu
    xenia-hid
    xenia-vfs
    android
    dl
    log
  )
  target_compile_options("xenia-kernel" PRIVATE
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
  set_target_properties("xenia-kernel" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-kernel"
    "aes_128"
    "fmt"
    "xenia-apu"
    "xenia-base"
    "xenia-cpu"
    "xenia-hid"
    "xenia-vfs"
  )
  set_target_properties("xenia-kernel" PROPERTIES
    OUTPUT_NAME "xenia-kernel"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-kernel" PRIVATE
    xenia
    xenia/src
    xenia/third_party
  )
  target_compile_definitions("xenia-kernel" PRIVATE
    _UNICODE
    UNICODE
    USE_CPP17
    _LIB
    NDEBUG
    _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-kernel"
    aes_128
    fmt
    xenia-apu
    xenia-base
    xenia-cpu
    xenia-hid
    xenia-vfs
    android
    dl
    log
  )
  target_compile_options("xenia-kernel" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:C>:-Werror=All>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-kernel" PROPERTIES
    CXX_STANDARD 20
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()