/**
 ******************************************************************************
 * Xenia : Xbox 360 Emulator Research Project                                 *
 ******************************************************************************
 * Copyright 2015 Ben Vanik. All rights reserved.                             *
 * Released under the BSD license - see LICENSE in the root for more details. *
 ******************************************************************************
 */

#ifndef XENIA_BASE_PLATFORM_WIN_H_
#define XENIA_BASE_PLATFORM_WIN_H_

// NOTE: if you're including this file it means you are explicitly depending
// on Windows-specific headers. This is bad for portability and should be
// avoided!

#include "xenia/base/platform.h"

#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#define NOMINMAX
#include <ObjBase.h>
#include <SDKDDKVer.h>
#include <bcrypt.h>
#include <dwmapi.h>
#include <shellapi.h>
#include <shlwapi.h>
#include <shobjidl.h>
#include <tpcshrd.h>
#include <windows.h>
#include <windowsx.h>
#undef DeleteBitmap
#undef DeleteFile
#undef GetFirstChild

static constexpr size_t KUSER_SHARED_INTERRUPTTIME_OFFSET = 8;
static unsigned char* KUserShared() { return (unsigned char*)0x7FFE0000ULL; }

#define XE_NTDLL_IMPORT(name, cls, clsvar)                          \
  static class cls {                                                \
   public:                                                          \
    FARPROC fn;                                                     \
    cls() : fn(nullptr) {                                           \
      auto ntdll = GetModuleHandleA("ntdll.dll");                   \
      if (ntdll) {                                                  \
        fn = GetProcAddress(ntdll, #name);                          \
      }                                                             \
    }                                                               \
    template <typename TRet = void, typename... TArgs>              \
    inline TRet invoke(TArgs... args) {                             \
      return reinterpret_cast<TRet(NTAPI*)(TArgs...)>(fn)(args...); \
    }                                                               \
    inline operator bool() const { return fn != nullptr; }          \
  } clsvar
#endif  // XENIA_BASE_PLATFORM_WIN_H_
