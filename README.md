# Clibs (Short for C-libraries)

Clibs (or C-libraries) is a collection of C libraries that handle basic tasks such has **math, regex, hashing, sorting, etc.** Clibs is currently still in **development** so changes and new libraries will occur.

## What is Clibs used for?

Clibs is used to test or use out **Crabby's** FFI system by importing shared libraries (e.g. `.so`, `.dll`, `.dylib`) in one go. Loading shared libraries is usually done by writing:

```crab
@ffi("peaklib.dll")
```

## What about STDLIB?

stdlib is different, it uses `.crab` files like `stdlib/json.crab`, `stdlib/math.crab`, and `stdlib/time.crab` as an example instead of using shared libraries  :3

## How to build

> Prerequisites:

- gcc
- make
- mingw (if you're in Windows)
- ruby & gem (if you want to test the lib files)

Simply run:

```bash
make
```

To automatically create the lib files in `builds/`

## Contributing

You can contribute by following [CONTRIBUTING.md](CONTRIBUTING.md) but overall everyone is welcome to contribute and make changes for clibs or for Crabby <3 🩷

## License

Clibs is under the **Apache** License.
