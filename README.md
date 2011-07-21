FeOSLua v0.0-prerelease
=======================

Introduction
------------

FeOSLua is a port of Lua 5.1.4 to FeOS. Currently it's very incomplete, but it works :)

Differences from vanilla Lua
----------------------------

Lua is configured to use `int` as its datatype instead of `double`, for obvious reasons. The following things are also not supported:

- The power operator
- The maths library
- The package library
- `os.clock`, `os.difftime`, `os.execute`, `os.getenv`, `os.setlocale`, `os.tmpname`
- `io.tmpfile`, `file:setvbuf`

How to compile FeOSLua
----------------------

`cd` to the directory the repo is in and run `make`.

How to copy FeOSLua to the SD card
----------------------------------

- Copy `liblua/lua514.fx2` to `/data/FeOS/lib`
- Copy `feoslua/feoslua.fx2` to `/data/FeOS/bin`

Known issues
------------

- Running `feoslua` with no parameters produces an error message.
