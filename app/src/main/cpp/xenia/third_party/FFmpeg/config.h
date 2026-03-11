#if defined(WIN32) || defined(_WIN32)
#if defined(_M_AMD64) || defined(__amd64__)
#include "config_windows_x86_64.h"
#elif defined(_M_ARM64) || defined(__aarch64__)
#include "config_windows_aarch64.h"
#else
#error ""
#endif
#elif defined(__gnu_linux__)
#include "config_linux_x86_64.h"
#elif defined(__ANDROID__)
#if defined(__aarch64__)
#include "config_android_aarch64.h"
#elif defined(__amd64__)
#include "config_android_x86_64.h"
#elif
#error "android arch unsupported"
#endif
#else
#error "no config"
#endif
