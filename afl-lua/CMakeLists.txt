project(afl-lua)

add_executable(${PROJECT_NAME} ${PROJECT_NAME}.c)
target_include_directories(${PROJECT_NAME} PRIVATE ${LUA_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LUA_LIBRARIES})
target_compile_options(${PROJECT_NAME} PUBLIC -Wall -Wextra -Wno-unused-parameter)

install(
  TARGETS ${PROJECT_NAME}
  DESTINATION "${CMAKE_BINDIR}/"
)
