#ifndef LIBHASH_H
#define LIBHASH_H

#include <stddef.h>
#include <stdint.h>

#ifdef _WIN32
    #define LIBHASH_API __declspec(dllexport)
#else
    #define LIBHASH_API
#endif

LIBHASH_API uint64_t hash_fnv1a(const uint8_t *data, size_t len);
LIBHASH_API uint32_t hash_djb2(const char *str);

#endif
