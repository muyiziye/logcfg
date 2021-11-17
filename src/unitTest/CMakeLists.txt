project(unittest)

set(${PROJECT_NAME}_SRC
    ut_main.cpp
)

include_directories(
    .
)

add_executable(
    ${PROJECT_NAME} ${${PROJECT_NAME}_SRC}
)

install(TARGETS ${PROJECT_NAME} DESTINATION ${BUILD_PATH}/bin)
