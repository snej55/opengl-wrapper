// #include <iostream>
//
// int main() {
//     std::cout << "Hello World!\n";
//     return 0;
// }

#include "src/app.h"

#include "src/model.h"
#include "src/skybox.h"

int main() {
    // initialization
    App app{640, 640, "OpenGL window"};
    app.enableDepthTesting();
    app.setCameraEnabled(true);

    float planeVertices[] = {
        // positions          // texture Coords (note we set these higher than 1 (together with GL_REPEAT as texture wrapping mode). this will cause the floor texture to repeat)
        5.0f, -0.5f,  5.0f,  2.0f, 0.0f,
       -5.0f, -0.5f,  5.0f,  0.0f, 0.0f,
       -5.0f, -0.5f, -5.0f,  0.0f, 2.0f,

        5.0f, -0.5f,  5.0f,  2.0f, 0.0f,
       -5.0f, -0.5f, -5.0f,  0.0f, 2.0f,
        5.0f, -0.5f, -5.0f,  2.0f, 2.0f
    };

    unsigned int planeVAO, planeVBO;
    glGenVertexArrays(1, &planeVAO);
    glGenBuffers(1, &planeVBO);

    glBindVertexArray(planeVAO);

    glBindBuffer(GL_ARRAY_BUFFER, planeVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(planeVertices), planeVertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), reinterpret_cast<void*>(0));
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), reinterpret_cast<void*>(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    glBindVertexArray(0);

    Texture* floorTex {app.loadTexture("data/images/floor.png")};
    Texture* boxTex {app.loadTexture("data/images/tomato.png")};

    Objects::Cube cube1 {glm::vec3{-1.0f, 0.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
    Objects::Cube cube2 {glm::vec3{2.0f, 0.0f, 0.0f}, glm::vec3{1.0f, 1.0f, 1.0f}};

    Shader cubeShader{"data/shaders/texCube.vert", "data/shaders/texCube.frag"};

    std::vector<std::string> faces = {
        "data/images/skybox/right.jpg",
        "data/images/skybox/left.jpg",
        "data/images/skybox/top.jpg",
        "data/images/skybox/bottom.jpg",
        "data/images/skybox/front.jpg",
        "data/images/skybox/back.jpg"
    };

    // handle skybox
    Skybox skybox {"data/images/skybox"};
    Shader skyboxShader {"data/shaders/skybox.vert", "data/shaders/skybox.frag"};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();

        app.clear();

        floorTex->activate(0);
        cubeShader.use();
        cubeShader.setInt("tex", 0);

        cubeShader.setMat4("projection", app.getPerspectiveMatrix());
        cubeShader.setMat4("view", app.getViewMatrix());
        cubeShader.setMat4("model", glm::mat4(1.0f));
        glBindVertexArray(planeVAO);
        glDrawArrays(GL_TRIANGLES, 0, 6);
        glBindVertexArray(0);

        boxTex->activate(0);

        cubeShader.use();
        cubeShader.setInt("tex", 0);

        app.drawCube(cube1, cubeShader, CUBE_TEXCOORDS);
        app.drawCube(cube2, cubeShader, CUBE_TEXCOORDS);

        // render skybox
        skybox.render(skyboxShader, app.getViewMatrix(), app.getPerspectiveMatrix());

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}