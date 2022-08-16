## Hacking

For developing `afl-lua` you need to install Lua libraries and headers and
CMake. On Debian: `apt install -y liblua5.1-0-dev cmake`.

```sh
$ cmake -S . -B build
$ cmake --build build --parallel
```

You are ready to make patches!
