#include "src/app.h"

#include <cmath>

int main() {

    // initialization
    App app{640, 640, "OpenGL window"};

    Texture* texture {app.loadTexture("data/images/defblade_icon.png")};

    // main loop    unsigned int rectVBO{}, rectVAO{}, rectEBO{};
    while (!app.shouldClose()) {
        app.handleInput();
        app.clear();

        app.drawTexture(texture, {std::cos(static_cast<float>(glfwGetTime())) * 0.25f - 0.5f, std::sin(static_cast<float>(glfwGetTime())) * 0.25f - 0.5f, 1.0f, 1.0f});

        app.tick();
    }

    app.freeTexture(texture);

    // clean up
    app.close();

    return 0;
}