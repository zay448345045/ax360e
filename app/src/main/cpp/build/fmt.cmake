add_library("fmt" STATIC
"xenia/third_party/fmt/src/format.cc"
"xenia/third_party/fmt/src/os.cc"
)
target_include_directories("fmt" PRIVATE
        xenia
        xenia/src
        xenia/third_party
        xenia/third_party/fmt/include
)
if(CMAKE_BUILD_TYPE STREQUAL Android-ARM64-Checked)
  set_target_properties("fmt" PROPERTIES
    OUTPUT_NAME "fmt"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Checked"
  )
  target_include_directories("fmt" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/fmt/include
  )
  target_compile_definitions("fmt" PRIVATE
    _UNICODE
    UNICODE
    DEBUG
    _LIB
  )
  target_link_libraries("fmt"
    android
    dl
    log
    ntdll
    wsock32
    ws2_32
    xinput
    comctl32
    shcore
    shlwapi
    dxguid
    bcrypt
  )
  set(_TARGET_LINK_FLAGS /ignore:4006 /ignore:4221)
  string(REPLACE ";" " " _TARGET_LINK_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "fmt" PROPERTY LINK_FLAGS ${_TARGET_LINK_FLAGS})
  unset(_TARGET_LINK_FLAGS)
  target_compile_options("fmt" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
  )
  set_target_properties("fmt" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Android-x86_64-Checked)
  set_target_properties("fmt" PROPERTIES
    OUTPUT_NAME "fmt"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Checked"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Checked"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Checked"
  )
  target_include_directories("fmt" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/fmt/include
  )
  target_compile_definitions("fmt" PRIVATE
    _UNICODE
    UNICODE
    DEBUG
    _AMD64=1
    _LIB
  )
  target_link_libraries("fmt"
    android
    dl
    log
    ntdll
    wsock32
    ws2_32
    xinput
    comctl32
    shcore
    shlwapi
    dxguid
    bcrypt
  )
  set(_TARGET_LINK_FLAGS /ignore:4006 /ignore:4221)
  string(REPLACE ";" " " _TARGET_LINK_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "fmt" PROPERTY LINK_FLAGS ${_TARGET_LINK_FLAGS})
  unset(_TARGET_LINK_FLAGS)
  target_compile_options("fmt" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-m64>
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-mavx>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-m64>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-mavx>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
  )
  set_target_properties("fmt" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Android-ARM64-Debug||CMAKE_BUILD_TYPE STREQUAL Debug)
  set_target_properties("fmt" PROPERTIES
    OUTPUT_NAME "fmt"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Debug"
  )
  target_include_directories("fmt" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/fmt/include
  )
  target_compile_definitions("fmt" PRIVATE
    _UNICODE
    UNICODE
    DEBUG
    _NO_DEBUG_HEAP=1
    _LIB
  )
  target_link_libraries("fmt"
    android
    dl
    log
    ntdll
    wsock32
    ws2_32
    xinput
    comctl32
    shcore
    shlwapi
    dxguid
    bcrypt
  )
  set(_TARGET_LINK_FLAGS /ignore:4006 /ignore:4221)
  string(REPLACE ";" " " _TARGET_LINK_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "fmt" PROPERTY LINK_FLAGS ${_TARGET_LINK_FLAGS})
  unset(_TARGET_LINK_FLAGS)
  target_compile_options("fmt" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
  )
  set_target_properties("fmt" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Android-x86_64-Debug)
  set_target_properties("fmt" PROPERTIES
    OUTPUT_NAME "fmt"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Debug"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Debug"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Debug"
  )
  target_include_directories("fmt" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/fmt/include
  )
  target_compile_definitions("fmt" PRIVATE
    _UNICODE
    UNICODE
    DEBUG
    _NO_DEBUG_HEAP=1
    _AMD64=1
    _LIB
  )
  target_link_libraries("fmt"
    android
    dl
    log
    ntdll
    wsock32
    ws2_32
    xinput
    comctl32
    shcore
    shlwapi
    dxguid
    bcrypt
  )
  set(_TARGET_LINK_FLAGS /ignore:4006 /ignore:4221)
  string(REPLACE ";" " " _TARGET_LINK_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "fmt" PROPERTY LINK_FLAGS ${_TARGET_LINK_FLAGS})
  unset(_TARGET_LINK_FLAGS)
  target_compile_options("fmt" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-m64>
    $<$<COMPILE_LANGUAGE:C>:-O0>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-mavx>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-m64>
    $<$<COMPILE_LANGUAGE:CXX>:-O0>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-mavx>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
  )
  set_target_properties("fmt" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION False
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Android-ARM64-Release)
  set_target_properties("fmt" PROPERTIES
    OUTPUT_NAME "fmt"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-ARM64/Release"
  )
  target_include_directories("fmt" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/fmt/include
  )
  target_compile_definitions("fmt" PRIVATE
    _UNICODE
    UNICODE
    NDEBUG
    _NO_DEBUG_HEAP=1
    _LIB
  )
  target_link_libraries("fmt"
    android
    dl
    log
    ntdll
    wsock32
    ws2_32
    xinput
    comctl32
    shcore
    shlwapi
    dxguid
    bcrypt
  )
  set(_TARGET_LINK_FLAGS /ignore:4006 /ignore:4221)
  string(REPLACE ";" " " _TARGET_LINK_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "fmt" PROPERTY LINK_FLAGS ${_TARGET_LINK_FLAGS})
  unset(_TARGET_LINK_FLAGS)
  target_compile_options("fmt" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-flto>
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-flto>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
  )
  set_target_properties("fmt" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION True
  )
endif()
if(CMAKE_BUILD_TYPE STREQUAL Android-x86_64-Release)
  set_target_properties("fmt" PROPERTIES
    OUTPUT_NAME "fmt"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Release"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Release"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/Android-x86_64/Release"
  )
  target_include_directories("fmt" PRIVATE
    xenia
    xenia/src
    xenia/third_party
    xenia/third_party/fmt/include
  )
  target_compile_definitions("fmt" PRIVATE
    _UNICODE
    UNICODE
    NDEBUG
    _NO_DEBUG_HEAP=1
    _AMD64=1
    _LIB
  )
  target_link_libraries("fmt"
    android
    dl
    log
    ntdll
    wsock32
    ws2_32
    xinput
    comctl32
    shcore
    shlwapi
    dxguid
    bcrypt
  )
  set(_TARGET_LINK_FLAGS /ignore:4006 /ignore:4221)
  string(REPLACE ";" " " _TARGET_LINK_FLAGS "${_TARGET_COMPILE_FLAGS}")
  set_property(TARGET "fmt" PROPERTY LINK_FLAGS ${_TARGET_LINK_FLAGS})
  unset(_TARGET_LINK_FLAGS)
  target_compile_options("fmt" PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-m64>
    $<$<COMPILE_LANGUAGE:C>:-flto>
    $<$<COMPILE_LANGUAGE:C>:-O3>
    $<$<COMPILE_LANGUAGE:C>:-g>
    $<$<COMPILE_LANGUAGE:C>:-mavx>
    $<$<COMPILE_LANGUAGE:C>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-m64>
    $<$<COMPILE_LANGUAGE:CXX>:-flto>
    $<$<COMPILE_LANGUAGE:CXX>:-O3>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    $<$<COMPILE_LANGUAGE:CXX>:-mavx>
    $<$<COMPILE_LANGUAGE:CXX>:-fvisibility=hidden>
    $<$<COMPILE_LANGUAGE:CXX>:-std=c++17>
  )
  set_target_properties("fmt" PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
    POSITION_INDEPENDENT_CODE False
    INTERPROCEDURAL_OPTIMIZATION True
  )
endif()