project(cfgParser)

find_package(FLEX)
find_package(BISON)

FLEX_TARGET(logcfg_flex logCfg.l ${CMAKE_CURRENT_BINARY_DIR}/logCfg.cpp COMPILE_FLAGS "-i -PlogCfg")

string(REPLACE "-Werror" "" CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})

set(${PROJECT_NAME}_SRC 
    logCfg.cpp
)

include_directories(
    .
)

add_library(${PROJECT_NAME} SHARED
    ${${PROJECT_NAME}_SRC}
)

install(TARGETS ${PROJECT_NAME} 
    DESTINATION ${BUILD_PATH}/bin
)


