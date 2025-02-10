//
// Created by Jens Kromdijk on 2/6/25.
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

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

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

    ShapeMan.init();
    TexHandlerMan.init();

    return true;
}

void App::handleInput() const {
    if (glfwGetKey(_window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
        glfwSetWindowShouldClose(_window, true);
    }
}


void App::close() {
    if (!_closed) {
        // cleanup
        _defaultShader->close();
        delete _defaultShader;

        ShapeMan.close();

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
    glfwSwapBuffers(_window);
    glfwPollEvents();

    const float currentFrame {static_cast<float>(glfwGetTime()) * 0.001f};
    _deltaTime = currentFrame - _lastFrame;
    _lastFrame = currentFrame;
}

bool App::shouldClose() const {
    return glfwWindowShouldClose(_window);
}

GLFWwindow* App::getWindow() const {
    return _window;
}

int App::getWidth() const {
    return _width;
}

int App::getHeight() const {
    return _height;
}

void App::setTitle(const char* title) const {
    glfwSetWindowTitle(_window, title);
}

float App::getDeltaTime() const {
    return _deltaTime;
}

void App::framebuffer_size_callback(GLFWwindow* window, const int width, const int height) {
    glViewport(0, 0, width, height);
}

// --------------- Shapes ---------------- //
void App::drawRect(const FRect rect, const Color color) const {
    ShapeMan.drawRect(rect, color);
}

void App::drawRect(const float x, const float y, const float w, const float h, const Color color) const {
    ShapeMan.drawRect({x, y, w, h}, color);
}

void App::drawRect(const float x, const float y, const float w, const float h, const int r, const int g, const int b) const {
    ShapeMan.drawRect({x, y, w, h}, {r, g, b});
}

void App::drawRect(const FRect rect, const int r, const int g, const int b) const {
    ShapeMan.drawRect(rect, {r, g, b});
}

Texture* App::loadTexture(const char* path) {
    Texture* texture {new Texture};
    texture->loadFromFile(path);
    return texture;
}

void App::freeTexture(const Texture* texture) {
    delete texture;
}

void App::drawTexture(const Texture* texture, const FRect destination) const {
    TexHandlerMan.drawTexture(texture, destination);
}
