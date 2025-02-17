#include "src/app.h"

int main() {

    // initialization
    App app{640, 640, "OpenGL window"};
    app.setCameraEnabled(true);

    const Shader lightShader{"data/shaders/lighting.vert", "data/shaders/lighting.frag"};
    lightShader.use();
    lightShader.setVec3("objectColor", 1.0f, 0.5f, 0.31f);
    lightShader.setVec3("lightColor", 1.0f, 1.0f, 1.0f);

    const Shader lightCubeShader{"data/shaders/lightCube.vert", "data/shaders/lightCube.frag"};

    constexpr Objects::Cube cube{glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(1.0f, 1.0f, 1.0f)};
    constexpr Objects::Cube lightSourceCube{glm::vec3(1.2f, 1.0f, 2.0f), glm::vec3(0.2f, 0.2f, 0.2f)};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();

        app.clear();
        app.drawCube(cube, lightShader);
        app.drawCube(lightSourceCube, lightCubeShader);

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}