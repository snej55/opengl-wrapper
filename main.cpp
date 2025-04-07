#include "src/app.h"

#include "src/model.h"
#include "src/util.h"

int main() {
    // initialization
    App app{640, 640, "OpenGL window"};
    app.enableDepthTesting();
    app.setCameraEnabled(true);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

    const Shader lightShader{"shaders/builtin/lighting.vert", "shaders/builtin/lighting.frag"};
    lightShader.use();
    lightShader.setVec3("objectColor", color2vec({182, 207, 142, 255}));
    lightShader.setVec3("lightColor", 1.0f, 1.0f, 1.0f);

    constexpr glm::vec3 lightPos {1.2f, 1.0f, -20.0f};

    lightShader.setVec3("light.position", lightPos);

    lightShader.setVec3("light.ambient", 0.2f, 0.2f, 0.2f);
    lightShader.setVec3("light.diffuse", 1.0f, 1.0f, 1.0f);
    lightShader.setVec3("light.specular", 1.0f, 1.0f, 1.0f);

    lightShader.setFloat("light.constant",  1.0f);
    lightShader.setFloat("light.linear",    0.001f);
    lightShader.setFloat("light.quadratic", 0.0032f);

    lightShader.setFloat("material.shininess", 32.0f); // pow(shininess)

    const Shader lightCubeShader{"shaders/builtin/lightCube.vert", "shaders/builtin/lightCube.frag"};

    constexpr Objects::Cube lightSourceCube{lightPos, glm::vec3(0.2f, 0.2f, 0.2f)};

    const Model* planetModel{app.loadModel("data/models/planet/planet.obj")};
    const Model* rockModel{app.loadModel("data/models/rock/rock.obj")};

    // generate random asteroid positions
    unsigned int amount {3000};
    glm::mat4* modelMatrices {new glm::mat4[amount]};

    // set random seed
    std::srand(static_cast<unsigned int>(glfwGetTime()));

    float radius = 50.0f;
    float offset = 20.f;
    for (unsigned int i{0}; i < amount; ++i)
    {
        glm::mat4 model = glm::mat4(1.0f);
        // 1. translation: displace along circle with 'radius' in range [-offset, offset]
        float angle = (float)i / (float)amount * 360.0f;
        float displacement = (rand() % (int)(2 * offset * 100)) / 100.0f - offset;
        float x = sin(angle) * radius + displacement;
        displacement = (rand() % (int)(2 * offset * 100)) / 100.0f - offset;
        float y = displacement * 0.4f; // keep height of field smaller compared to width of x and z
        displacement = (rand() % (int)(2 * offset * 100)) / 100.0f - offset;
        float z = cos(angle) * radius + displacement;
        model = glm::translate(model, glm::vec3(x, y, z));

        // 2. scale: scale between 0.05 and 0.25f
        float scale = (rand() % 20) / 100.0f + 0.05;
        model = glm::scale(model, glm::vec3(scale));

        // 3. rotation: add random rotation around a (semi)randomly picked rotation axis vector
        float rotAngle = (rand() % 360);
        model = glm::rotate(model, rotAngle, glm::vec3(0.4f, 0.6f, 0.8f));

        // 4. now add to list of matrices
        modelMatrices[i] = model;
    }

    app.initPostProcessing();

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();
        app.clear();

        lightShader.use();

        lightShader.setVec3("viewPos", app.getCameraPosition());

        app.drawModel(planetModel, lightShader, glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(4.0f, 4.0f, 4.0f));

        for (unsigned int i{0}; i < amount; ++i)
        {
            app.drawModelM(rockModel, lightShader, modelMatrices[i]);
        }

        app.drawCube(lightSourceCube, lightCubeShader);
        app.tick();
    }

    // clean up
    delete[] modelMatrices;
    app.freeModel(planetModel);
    app.freeModel(rockModel);
    app.close();

    return 0;
}