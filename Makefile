CC = gcc
CFLAGS = -Wall -Wextra -Wimplicit-function-declaration -O2 -fPIC
OUT = builds

ifeq ($(OS),Windows_NT)
    HASH_LIB = $(OUT)/libhash.dll
    MATH_LIB = $(OUT)/libmath.dll
    REGEX_LIB = $(OUT)/libregex.dll
    SORT_LIB = $(OUT)/libsort.dll
else ifeq ($(shell uname),Darwin)
    HASH_LIB = $(OUT)/libhash.dylib
    MATH_LIB = $(OUT)/libmath.dylib
    REGEX_LIB = $(OUT)/libregex.dylib
    SORT_LIB = $(OUT)/libsort.dylib
else
    HASH_LIB = $(OUT)/libhash.so
    MATH_LIB = $(OUT)/libmath.so
    REGEX_LIB = $(OUT)/libregex.so
    SORT_LIB = $(OUT)/libsort.so
endif

.PHONY: all clean

all: hash math regex sort

$(OUT):
	@if not exist $(OUT) mkdir $(OUT)

hash: $(OUT)
	$(CC) $(CFLAGS) -shared libs/libhash/src/hashlib.c -Ilibs/libhash/include -o $(HASH_LIB)

math: $(OUT)
	$(CC) $(CFLAGS) -shared libs/libmath/src/mathlib.c -Ilibs/libmath/include -o $(MATH_LIB)

regex: $(OUT)
	$(CC) $(CFLAGS) -shared libs/libregex/src/regexlib.c -Ilibs/libregex/include -o $(REGEX_LIB)

sort: $(OUT)
	$(CC) $(CFLAGS) -shared libs/libsort/src/sortlib.c -Ilibs/libsort/include -o $(SORT_LIB)

clean:
	@if exist $(OUT) rmdir /S /Q $(OUT)
