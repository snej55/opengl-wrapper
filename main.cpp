#include "src/app.h"
#include "src/terrain.h"

int main()
{
    // initialization
    App app{640, 640, "OpenGL window"};
    app.enableDepthTesting();
    app.setCameraEnabled(true);

    const Shader terrainShader {"shaders/builtin/heightMap.vert", "shaders/builtin/heightMap.frag"};
    Terrain terrain{};
    terrain.load("data/images/iceland_heightmap.png");

    // glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

    // get uniform block index for terrainShader
    const unsigned int ubiTerrain {glGetUniformBlockIndex(terrainShader.ID, "Matrices")};
    // set uniform block equal to binding point 0
    glUniformBlockBinding(terrainShader.ID, ubiTerrain, 0);

    // generate actual buffer
    unsigned int uboMatrices;
    glGenBuffers(1, &uboMatrices);
    glBindBuffer(GL_UNIFORM_BUFFER, uboMatrices);
    /*
     * projection (mat4)
     * base alignment    aligned offset
     * 16                0
     * 16                16
     * 16                32
     * 16                48
     * view (mat4)
     * 16                64
     * 16                80
     * 16                96
     * 16                112
     * ---------------------
     * 112 + 16 = 128 bytes
     */
    // we could also just use sizeof(glm::mat4) * 2, instead of calculating it manually
    glBufferData(GL_UNIFORM_BUFFER, 2 * sizeof(glm::mat4), nullptr, GL_STATIC_DRAW); // allocate 128 bytes ^^^^^^
    glBindBuffer(GL_UNIFORM_BUFFER, 0);

    // link buffer range
    glBindBufferRange(GL_UNIFORM_BUFFER, 0, uboMatrices, 0, 2 * sizeof(glm::mat4));

    // insert data (we only have to update the perspective matrix once)
    glm::mat4 projection {app.getPerspectiveMatrix()};
    glBindBuffer(GL_UNIFORM_BUFFER, uboMatrices);
    glBufferSubData(GL_UNIFORM_BUFFER, 0, sizeof(glm::mat4), glm::value_ptr(projection));
    glBindBuffer(GL_UNIFORM_BUFFER, 0);

    // main loop
    while (!app.shouldClose())
    {
        // for wireframe rendering
        app.handleInput();
        
        app.clear();

        glm::mat4 view {app.getViewMatrix()};
        glBindBuffer(GL_UNIFORM_BUFFER, uboMatrices);
        glBufferSubData(GL_UNIFORM_BUFFER, sizeof(glm::mat4), sizeof(glm::mat4), glm::value_ptr(view));
        glBindBuffer(GL_UNIFORM_BUFFER, 0);

        terrain.render(terrainShader, app.getPerspectiveMatrix(), app.getViewMatrix(), glm::mat4{1.0f});

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}