cmake_minimum_required(VERSION 3.30)
project(main)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_SYSTEM_NAME Windows)

set(GL_LIBS glfw3)

if (CMAKE_SYSTEM MATCHES Windows)
    message(STATUS "Target system is Windows")
    # link/include for Windows x86
    include_directories(${CMAKE_SOURCE_DIR}/include/windows)
elseif (CMAKE_SYSTEM MATCHES Linux)
    message(STATUS "Target system is Linux")
    # link/include for linux x86
    include_directories(${CMAKE_SOURCE_DIR}/include/linux)
    set(GL_LIBS GL GLU glfw3)
endif()

set(SOURCES main.cpp
        src/app.cpp
        src/app.h
        src/glad.c
        src/shader.cpp
        src/shader.h
        src/texture.cpp
        src/texture.h
)

link_directories(${CMAKE_SOURCE_DIR}/lib/windows)

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME} ${GL_LIBS})