cmake_minimum_required(VERSION 3.16)
project(myapp)
add_executable(app test.cpp)
set(CMAKE_BUILD_TYPE Debug)

add_library(math STATIC ${CMAKE_SOURCE_DIR}/src/math/math.cpp)
target_include_directories(math PUBLIC
	${CMAKE_SOURCE_DIR}/inc)
target_include_directories(app PUBLIC
	${CMAKE_SOURCE_DIR}/inc)
target_link_libraries(app
	math)
