#include "src/app.h"

int main()
{
    // initialization
    App app{640, 640, "OpenGL window"};
    app.enableDepthTesting();

    float points[]
    {
        -0.5f, 0.5f, // top-left
        0.5f, 0.5f, // top-right
        0.5f, -0.5f, // bottom-right
        -0.5f, -0.5f // bottom-left
    };

    unsigned int VAO, VBO;
    glGenVertexArrays(1, &VAO);

    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(points), points, GL_STATIC_DRAW);

    glBindVertexArray(VAO);
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), reinterpret_cast<void*>(0));
    glEnableVertexAttribArray(0);
    glBindVertexArray(0);

    const Shader pointShader {"shaders/points.vert", "shaders/points.frag"};
    pointShader.addGeometryShader("shaders/points.geom");

    // main loop
    while (!app.shouldClose())
    {
        // for wireframe rendering
        app.handleInput();

        app.clear();

        pointShader.use();
        glBindVertexArray(VAO);
        glDrawArrays(GL_POINTS, 0, 4);

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}
