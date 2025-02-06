cmake_minimum_required(VERSION 3.31)
project(main)

set(CMAKE_CXX_STANDARD 20)

add_executable(${PROJECT_NAME} main.cpp
        src/app.cpp
        src/app.h
        src/glad.c
)

include_directories(${CMAKE_SOURCE_DIR}/include)

link_directories(${CMAKE_SOURCE_DIR}/lib)

set(${GL_LIBRARIES} GL GLU glfw)

target_link_libraries(${PROJECT_NAME} ${GL_LIBRARIES})