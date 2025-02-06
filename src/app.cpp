//
// Created by jenskromdijk3 on 2/6/25.
//

#include "app.h"

#include <iostream>

App::App(const int width, const int height, const char* title) {
    // should only be called once
    if (!init(width, height, title)) {
        std::cout << "Failed to initialize!" << std::endl;
    } else {
        std::cout << "Initialized!" << std::endl;
    }
}

bool App::init(const int width, const int height, const char* title) {
    glfwInit();

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    _window = glfwCreateWindow(width, height, title, nullptr, nullptr);
    if (_window == nullptr) {
        std::cout << "Failed to create GLFW window!" << std::endl;
        glfwTerminate();
        return false;
    }
    glfwMakeContextCurrent(_window);

    if (!gladLoadGLLoader(reinterpret_cast<GLADloadproc>(glfwGetProcAddress))) {
        std::cout << "Failed to initialize GLAD!" << std::endl;
        return false;
    }

    return true;
}