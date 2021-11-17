project(unittest)

message(${CMAKE_CXX_FLAGS})
set(${PROJECT_NAME}_SRC
    ut_main.cpp
)

include_directories(
    .
)

add_executable(
    ${PROJECT_NAME} ${${PROJECT_NAME}_SRC}
)

link_directories(
    ${cfgParser_BINARY_DIR}
)

target_link_libraries(${PROJECT_NAME}
    cfgParser    
)

install(TARGETS ${PROJECT_NAME} DESTINATION ${BUILD_PATH}/bin)
