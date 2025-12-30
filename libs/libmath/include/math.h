#ifndef LIBMATH_H
#define LIBMATH_H

#ifdef _WIN32
    #define LIBMATH_API __declspec(dllexport)
#else
    #define LIBMATH_API
#endif

LIBMATH_API int add(int a, int b);
LIBMATH_API int sub(int a, int b);
LIBMATH_API int mul(int a, int b);
LIBMATH_API double div(double a, double b);

LIBMATH_API int clamp(int value, int min, int max);

#endif
