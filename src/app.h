//
// Created by jens kromdijk on 2/6/25.
//

/*
 * TODO:
 * draw rect
 */

#ifndef APP_H
#define APP_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "./shader.h"
#include "./shapes.h"

class App {
public:
    App(int width, int height, const char* title);

    ~App();

    void clear() const;
    void tick();

    [[nodiscard]] bool shouldClose() const;

    [[nodiscard]] GLFWwindow* getWindow() const;

    [[nodiscard]] int getWidth() const;

    [[nodiscard]] int getHeight() const;

    void setTitle(const char* title) const;

    [[nodiscard]] float getDeltaTime() const;

    void handleInput() const;

    void close();

    // ---------- Shapes ------------ //
    void drawRect(Rect rect, Color color) const;
    void drawRect(int x, int y, int w, int h, Color color) const;
    void drawRect(int x, int y, int w, int h, int r, int g, int b) const;
    void drawRect(Rect rect, int r, int g, int b) const;

private:
    GLFWwindow* _window{nullptr};
    int _width{0};
    int _height{0};

    float _deltaTime{0.0f};
    float _lastFrame{0.0f};

    bool _closed{false};

    Shader* _defaultShader{nullptr};
    Shapes Shapes{};

    // ----------------------------------------------------------- //

    bool init(int width, int height, const char* title);

    static void framebuffer_size_callback(GLFWwindow* window, int width, int height);
};



#endif //APP_H
