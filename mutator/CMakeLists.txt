project(afl-lua-mutator)

set(MUTATOR_NAME luamutator)
add_library(${MUTATOR_NAME} SHARED afl_mutator.c)
target_include_directories(${MUTATOR_NAME} PRIVATE ${LUA_INCLUDE_DIR})
target_link_libraries(${MUTATOR_NAME} PRIVATE ${LUA_LIBRARIES})
target_compile_options(${MUTATOR_NAME} PUBLIC -Wall -Wextra -Wno-unused-parameter)

install(
  TARGETS ${MUTATOR_NAME}
  DESTINATION ${LIBDIR}
)

install(
  FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/example_afl_mutator.lua
  DESTINATION ${LUADIR}/${PROJECT_NAME}/
)
