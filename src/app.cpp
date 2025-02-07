//
// Created by jenskromdijk on 2/6/25.
//

#include "app.h"

#include <iostream>

App::App(const int width, const int height, const char* title)
    // vertex & fragment paths don't matter for default shader
{
    // should only be called once
    if (!init(width, height, title)) {
        std::cout << "Failed to initialize!" << std::endl;
    } else {
        std::cout << "Initialized OpenGL context!" << std::endl;
    }
}

App::~App() {
    if (!_closed) {
        close();
    }
}

bool App::init(const int width, const int height, const char* title) {
    glfwInit();

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
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

    _width = width;
    _height = height;
    glViewport(0, 0, width, height);

    glfwSetFramebufferSizeCallback(_window, framebuffer_size_callback);

    glEnable(GL_DEPTH_TEST);

    _defaultShader = new Shader{"default", "default", true};

    return true;
}

void App::close() {
    if (!_closed) {
        // cleanup
        delete _defaultShader;

        glfwDestroyWindow(_window);
        glfwTerminate();
        _closed = true;
    }
}

void App::clear() const {
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    _defaultShader->use();
}

void App::tick() {
    const float currentFrame {static_cast<float>(glfwGetTime()) * 0.001f};
    _deltaTime = currentFrame - _lastFrame;
    _lastFrame = currentFrame;

    glfwSwapBuffers(_window);
    glfwPollEvents();
}

bool App::shouldClose() const {
    return glfwWindowShouldClose(_window);
}

void App::framebuffer_size_callback(GLFWwindow* window, const int width, const int height) {
    glViewport(0, 0, width, height);
}