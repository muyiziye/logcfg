project(logcfg)

cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror") 

set(BUILD_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../build)

# add normal libraries
add_subdirectory(cfgParser)

# add unit test libraries
add_subdirectory(unitTest)
