project(logcfg)

cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror") 
set(CMAKE_INSTALL_RPATH "$ORIGIN")


OPTION(DEBUG_MODE "Set the compile mode" OFF)
if(DEBUG_MODE)
    set(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -O0 -g ") 
else()
    set(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -O3 ") 
endif(DEBUG_MODE)


OPTION(ENABLE_ASAN "Enable asan" OFF)
if(ENABLE_ASAN)
    set(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -fsanitize=address ") 
endif(ENABLE_ASAN)


OPTION(ENABLE_GCOV "Enable gcov" OFF)
if(ENABLE_GCOV)
    set(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage ") 
endif(ENABLE_GCOV)


set(BUILD_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../build)

# add normal libraries
add_subdirectory(cfgParser)

# add unit test libraries
add_subdirectory(unitTest)
