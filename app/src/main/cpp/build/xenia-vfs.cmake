add_library("xenia-vfs" STATIC
        "xenia/src/xenia/vfs/device.cc"
        "xenia/src/xenia/vfs/device.h"
        "xenia/src/xenia/vfs/devices/disc_image_device.cc"
        "xenia/src/xenia/vfs/devices/disc_image_device.h"
        "xenia/src/xenia/vfs/devices/disc_image_entry.cc"
        "xenia/src/xenia/vfs/devices/disc_image_entry.h"
        "xenia/src/xenia/vfs/devices/disc_image_file.cc"
        "xenia/src/xenia/vfs/devices/disc_image_file.h"
        "xenia/src/xenia/vfs/devices/disc_zarchive_device.cc"
        "xenia/src/xenia/vfs/devices/disc_zarchive_device.h"
        "xenia/src/xenia/vfs/devices/disc_zarchive_entry.cc"
        "xenia/src/xenia/vfs/devices/disc_zarchive_entry.h"
        "xenia/src/xenia/vfs/devices/disc_zarchive_file.cc"
        "xenia/src/xenia/vfs/devices/disc_zarchive_file.h"
        "xenia/src/xenia/vfs/devices/host_path_device.cc"
        "xenia/src/xenia/vfs/devices/host_path_device.h"
        "xenia/src/xenia/vfs/devices/host_path_entry.cc"
        "xenia/src/xenia/vfs/devices/host_path_entry.h"
        "xenia/src/xenia/vfs/devices/host_path_file.cc"
        "xenia/src/xenia/vfs/devices/host_path_file.h"
        "xenia/src/xenia/vfs/devices/null_device.cc"
        "xenia/src/xenia/vfs/devices/null_device.h"
        "xenia/src/xenia/vfs/devices/null_entry.cc"
        "xenia/src/xenia/vfs/devices/null_entry.h"
        "xenia/src/xenia/vfs/devices/null_file.cc"
        "xenia/src/xenia/vfs/devices/null_file.h"
        "xenia/src/xenia/vfs/devices/stfs_xbox.h"
        "xenia/src/xenia/vfs/devices/xcontent_container_device.cc"
        "xenia/src/xenia/vfs/devices/xcontent_container_device.h"
        "xenia/src/xenia/vfs/devices/xcontent_container_entry.cc"
        "xenia/src/xenia/vfs/devices/xcontent_container_entry.h"
        "xenia/src/xenia/vfs/devices/xcontent_container_file.cc"
        "xenia/src/xenia/vfs/devices/xcontent_container_file.h"
        "xenia/src/xenia/vfs/devices/xcontent_devices/stfs_container_device.cc"
        "xenia/src/xenia/vfs/devices/xcontent_devices/stfs_container_device.h"
        "xenia/src/xenia/vfs/devices/xcontent_devices/stfs_container_entry.cc"
        "xenia/src/xenia/vfs/devices/xcontent_devices/stfs_container_entry.h"
        "xenia/src/xenia/vfs/devices/xcontent_devices/stfs_container_file.cc"
        "xenia/src/xenia/vfs/devices/xcontent_devices/stfs_container_file.h"
        "xenia/src/xenia/vfs/devices/xcontent_devices/svod_container_device.cc"
        "xenia/src/xenia/vfs/devices/xcontent_devices/svod_container_device.h"
        "xenia/src/xenia/vfs/devices/xcontent_devices/svod_container_entry.cc"
        "xenia/src/xenia/vfs/devices/xcontent_devices/svod_container_entry.h"
        "xenia/src/xenia/vfs/devices/xcontent_devices/svod_container_file.cc"
        "xenia/src/xenia/vfs/devices/xcontent_devices/svod_container_file.h"
        "xenia/src/xenia/vfs/entry.cc"
        "xenia/src/xenia/vfs/entry.h"
        "xenia/src/xenia/vfs/file.h"
        "xenia/src/xenia/vfs/virtual_file_system.cc"
        "xenia/src/xenia/vfs/virtual_file_system.h"
)
if(CMAKE_BUILD_TYPE STREQUAL Checked)
  add_dependencies("xenia-vfs"
          "xenia-base"
          "zstd"
          "zarchive"
  )
  set_target_properties("xenia-vfs" PROPERTIES
          OUTPUT_NAME "xenia-vfs"
          ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
          LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
          RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("xenia-vfs" PRIVATE
          xenia
          xenia/src
          xenia/third_party
  )
  target_compile_definitions("xenia-vfs" PRIVATE
          _UNICODE
          UNICODE
          USE_CPP17
          _LIB
          DEBUG
  )
  target_link_libraries("xenia-vfs"
          xenia-base
          zstd
          zarchive
          android
          dl
          log
  )
  target_compile_options("xenia-vfs" PRIVATE
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
  set_target_properties("xenia-vfs" PROPERTIES
          CXX_STANDARD 20
          CXX_STANDARD_REQUIRED YES
          CXX_EXTENSIONS NO
          POSITION_INDEPENDENT_CODE False
          INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  add_dependencies("xenia-vfs"
          "xenia-base"
          "zstd"
          "zarchive"
  )
  set_target_properties("xenia-vfs" PROPERTIES
          OUTPUT_NAME "xenia-vfs"
          ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
          LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
          RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("xenia-vfs" PRIVATE
          xenia
          xenia/src
          xenia/third_party
  )
  target_compile_definitions("xenia-vfs" PRIVATE
          _UNICODE
          UNICODE
          USE_CPP17
          _LIB
          DEBUG
          _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-vfs"
          xenia-base
          zstd
          zarchive
          android
          dl
          log
  )
  target_compile_options("xenia-vfs" PRIVATE
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
  set_target_properties("xenia-vfs" PROPERTIES
          CXX_STANDARD 20
          CXX_STANDARD_REQUIRED YES
          CXX_EXTENSIONS NO
          POSITION_INDEPENDENT_CODE False
          INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Release)
  add_dependencies("xenia-vfs"
          "xenia-base"
          "zstd"
          "zarchive"
  )
  set_target_properties("xenia-vfs" PROPERTIES
          OUTPUT_NAME "xenia-vfs"
          ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
          LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
          RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("xenia-vfs" PRIVATE
          xenia
          xenia/src
          xenia/third_party
  )
  target_compile_definitions("xenia-vfs" PRIVATE
          _UNICODE
          UNICODE
          USE_CPP17
          _LIB
          NDEBUG
          _NO_DEBUG_HEAP=1
  )
  target_link_libraries("xenia-vfs"
          xenia-base
          zstd
          zarchive
          android
          dl
          log
  )
  target_compile_options("xenia-vfs" PRIVATE
          $<$<COMPILE_LANGUAGE:C>:-O3>
          $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
          $<$<COMPILE_LANGUAGE:C>:-Werror=All>
          $<$<COMPILE_LANGUAGE:CXX>:-O3>
          $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
          $<$<COMPILE_LANGUAGE:CXX>:-std=c++20>
          $<$<COMPILE_LANGUAGE:CXX>:-Werror=All>
  )
  set_target_properties("xenia-vfs" PROPERTIES
          CXX_STANDARD 20
          CXX_STANDARD_REQUIRED YES
          CXX_EXTENSIONS NO
          POSITION_INDEPENDENT_CODE False
          INTERPROCEDURAL_OPTIMIZATION False
  )
endif()