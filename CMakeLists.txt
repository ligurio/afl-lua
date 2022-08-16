cmake_minimum_required(VERSION 3.10.2)

project(afl-lua
  LANGUAGES C CXX
  VERSION "1.0.0"
)
find_package(Lua 5.1 REQUIRED)

set(LUA_NAME "lua${LUA_VERSION_MAJOR}.${LUA_VERSION_MINOR}")
find_program(LUA_EXECUTABLE "${LUA_NAME}")
if(NOT EXISTS ${LUA_EXECUTABLE})
  message(FATAL_ERROR "${LUA_NAME} is required")
endif()
message(STATUS "Found Lua ${LUA_VERSION_STRING}")
message(STATUS "Found Lua interpreter ${LUA_EXECUTABLE}")

add_subdirectory(afl-lua)

if (NOT CMAKE_LUADIR)
  set(CMAKE_LUADIR "${CMAKE_PREFIX_PATH}")
endif()

if (NOT CMAKE_BINDIR)
  set(CMAKE_BINDIR "${CMAKE_PREFIX_PATH}")
endif()

install(
  FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/README.md
  DESTINATION ${CMAKE_LUADIR}/doc
)
