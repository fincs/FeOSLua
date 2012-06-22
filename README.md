FeOSLua v0.0-prerelease
=======================

Introduction
------------

FeOSLua is a port of Lua 5.2 to FeOS. Currently it's very incomplete, but it works :)

Differences from vanilla Lua
----------------------------

Lua is configured to use `int` as its datatype instead of `double`, for obvious reasons. The following things are also not supported:

- The power operator
- The maths library
- `os.clock`, `os.difftime`, `os.getenv`, `os.setlocale`, `os.tmpname`
- `io.tmpfile`, `file:setvbuf`

How to build FeOSLua
----------------------

`cd` to the directory the repo is in and run `make install`.

Of packages and native libs
---------------------------

FeOSLua supports loading native Lua plugins. These are the default paths:

- `LUA_LDIR = /data/FeOS/Lua/lib/` (Lua libraries)
- `LUA_CDIR = /data/FeOS/Lua/lib/native/` (Native Lua plugin)
