#include "src/app.h"

int main() {

    // initialization
    App app{640, 640, "OpenGL window"};
    app.setCameraEnabled(true);

    const Shader lightShader{"data/shaders/lighting.vert", "data/shaders/lighting.frag"};
    lightShader.use();
    lightShader.setVec3("objectColor", 1.0f, 0.5f, 0.31f);
    lightShader.setVec3("lightColor", 1.0f, 1.0f, 1.0f);

    constexpr Objects::Cube cube{glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(0.5f, 0.5f, 0.5f)};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();

        app.clear();
        app.drawCube(cube, lightShader);

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}