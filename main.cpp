#include "src/app.h"

int main() {

    // initialization
    App app{640, 640, "OpenGL window"};
    app.setCameraEnabled(true);

    const Shader lightShader{"data/shaders/lighting.vert", "data/shaders/lighting.frag"};
    lightShader.use();
    lightShader.setVec3("objectColor", color2vec({182, 207, 142, 255}));
    lightShader.setVec3("lightColor", 1.0f, 1.0f, 1.0f);

    constexpr glm::vec3 lightPos {1.2f, 1.0f, 2.0f};

    lightShader.setVec3("light.position", lightPos);

    lightShader.setVec3("light.ambient", 0.2f, 0.2f, 0.2f);
    lightShader.setVec3("light.diffuse", 0.5f, 0.5f, 0.5f);
    lightShader.setVec3("light.specular", 1.0f, 1.0f, 1.0f);

    lightShader.setVec3("material.ambient", 1.0f, 0.5f, 0.31f);
    lightShader.setVec3("material.diffuse", 1.0f, 0.5f, 0.31f);
    lightShader.setVec3("material.specular", 0.5f, 0.5f, 0.5f);
    lightShader.setFloat("material.shininess", 32.0f);

    const Shader lightCubeShader{"data/shaders/lightCube.vert", "data/shaders/lightCube.frag"};

    constexpr Objects::Cube cube{glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(1.0f, 1.0f, 1.0f)};
    constexpr Objects::Cube lightSourceCube{lightPos, glm::vec3(0.2f, 0.2f, 0.2f)};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();

        app.clear();

        lightShader.use();
        lightShader.setVec3("viewPos", app.getCameraPosition());

        app.drawCubeNormals(cube, lightShader, static_cast<float>(glfwGetTime()), {1.0f, 0.3f, 0.5f});
        app.drawCube(lightSourceCube, lightCubeShader);

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}