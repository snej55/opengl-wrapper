#include "src/app.h"

int main() {
    // initialization
    App app{640, 640, "OpenGL window"};
    app.setCameraEnabled(true);

    glm::vec3 cubePositions[] = {
        glm::vec3( 0.0f,  0.0f,  0.0f),
        glm::vec3( 2.0f,  5.0f, -15.0f),
        glm::vec3(-1.5f, -2.2f, -2.5f),
        glm::vec3(-3.8f, -2.0f, -12.3f),
        glm::vec3( 2.4f, -0.4f, -3.5f),
        glm::vec3(-1.7f,  3.0f, -7.5f),
        glm::vec3( 1.3f, -2.0f, -2.5f),
        glm::vec3( 1.5f,  2.0f, -2.5f),
        glm::vec3( 1.5f,  0.2f, -1.5f),
        glm::vec3(-1.3f,  1.0f, -1.5f)
    };

    const Shader lightShader{"data/shaders/lighting.vert", "data/shaders/lighting.frag"};
    lightShader.use();
    lightShader.setVec3("objectColor", color2vec({182, 207, 142, 255}));
    lightShader.setVec3("lightColor", 1.0f, 1.0f, 1.0f);

    constexpr glm::vec3 lightPos {1.2f, 1.0f, 2.0f};

    lightShader.setVec3("light.position", lightPos);

    lightShader.setVec3("light.ambient", 0.2f, 0.2f, 0.2f);
    lightShader.setVec3("light.diffuse", 0.5f, 0.5f, 0.5f);
    lightShader.setVec3("light.specular", 1.0f, 1.0f, 1.0f);

    lightShader.setFloat("light.constant",  1.0f);
    lightShader.setFloat("light.linear",    0.09f);
    lightShader.setFloat("light.quadratic", 0.032f);

    // lightShader.setVec3("material.ambient", 1.0f, 0.5f, 0.31f);
    const Texture* diffuseTex {app.loadTexture("data/images/defblade_icon.png")};
    const Texture* specularTex {app.loadTexture("data/images/border.png")};

    lightShader.setInt("material.diffuse", 0); // diffuse texture
    lightShader.setInt("material.specular", 1); // specular texture
    lightShader.setFloat("material.shininess", 32.0f); // pow(shininess)

    const Shader lightCubeShader{"data/shaders/lightCube.vert", "data/shaders/lightCube.frag"};

    Objects::Cube cube{glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(1.0f, 1.0f, 1.0f)};
    constexpr Objects::Cube lightSourceCube{lightPos, glm::vec3(0.2f, 0.2f, 0.2f)};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();

        app.clear();

        lightShader.use();
        // lightShader.setInt("material.diffuse", 0);
        // diffuseTex->activate(0);

        lightShader.setVec3("viewPos", app.getCameraPosition());

        diffuseTex->activate(0);
        specularTex->activate(1);

        for (unsigned int i{0}; i < 10; ++i) {
            cube.position = cubePositions[i];
            app.drawCube(cube, lightShader, CUBE_FULL, static_cast<float>(glfwGetTime()) + 10.0f * i, {1.0f, 0.3f, 0.5f});
        }

        app.drawCube(lightSourceCube, lightCubeShader);

        app.tick();
    }

    // clean up
    app.freeTexture(diffuseTex);
    app.freeTexture(specularTex);
    app.close();

    return 0;
}