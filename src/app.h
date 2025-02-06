//
// Created by jens kromdijk on 2/6/25.
//

#ifndef APP_H
#define APP_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "./shader.h"

class App {
public:
    App(int width, int height, const char* title);

    ~App();

    void clear() const;
    void tick();

    [[nodiscard]] bool shouldClose() const;

    void close();

private:
    GLFWwindow* _window{nullptr};
    int _width{0};
    int _height{0};

    float _deltaTime{0.0f};
    float _lastFrame{0.0f};

    bool _closed{false};

    Shader _defaultShader;

    // ----------------------------------------------------------- //

    bool init(int width, int height, const char* title);

    static void framebuffer_size_callback(GLFWwindow* window, int width, int height);
};



#endif //APP_H
