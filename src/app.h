//
// Created by jens kromdijk on 2/6/25.
//

/* TODO:
 * 1. OpenGL Context ✔
 * 2. Shaders ✔
 * 3. Drawing rects ✔
 * 4. Drawing textures ✔
 * 5. Better coordinate system
 * ----------------- 3D ----------------- *
 * 6. Lighting/Objects
 * 7. Model loading
 */

#ifndef APP_H
#define APP_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "./shader.h"
#include "./shapes.h"
#include "./texture.h"
#include "./objects.h"
#include "./camera.h"

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

    void setCameraEnabled(bool val);
    [[nodiscard]] bool getCameraEnabled() const;

    void handleInput();

    void close();

    // ---------- Shapes ------------ //
    void drawRect(FRect rect, Color color) const;
    void drawRect(float x, float y, float w, float h, Color color) const;
    void drawRect(float x, float y, float w, float h, int r, int g, int b) const;
    void drawRect(FRect rect, int r, int g, int b) const;

    // ---------- Objects ----------- //
    void drawCube(const Objects::Cube& cube, const Shader& shader) const;

    // ---------- Textures ---------- //
    Texture* loadTexture(const char* path) const;
    void freeTexture(const Texture* texture) const;
    void drawTexture(const Texture* texture, FRect destination) const;

    void mouse_callback(GLFWwindow* window, double xPosIn, double yPosIn);
    void scroll_callback(GLFWwindow* window, double xOffset, double yOffset);

private:
    GLFWwindow* _window{nullptr};
    int _width{0};
    int _height{0};

    float _deltaTime{0.0f};
    float _lastFrame{0.0f};

    bool _closed{false};

    Shader* _defaultShader{nullptr};
    Shapes ShapeMan{};
    TexHandler TexHandlerMan{};
    ObjectHandler ObjHandlerMan{};

    // camera stuff
    Camera CameraMan{};
    float _camLastX{};
    float _camLastY{};
    bool _camFirstMouse{true};

    bool _cameraEnabled{false};

    // ----------------------------------------------------------- //

    bool init(int width, int height, const char* title);

    static void framebuffer_size_callback(GLFWwindow* window, int width, int height);

    static void win_mouse_callback(GLFWwindow* window, double xPosIn, double yPosIn);
    static void win_scroll_callback(GLFWwindow* window, double xOffset, double yOffset);
};



#endif //APP_H
