//
// Created by Jens Kromdijk on 07/02/2025.
//

#ifndef SHAPES_H
#define SHAPES_H

#include <glad/glad.h>

#include "./shader.h"

struct Rect {
    int x{0};
    int y{0};
    int w{0};
    int h{0};
};

struct Circle {
    int x{0};
    int y{0};
    int radius{0};
};

class Shapes {
public:
    Shapes();

    void init() {
        glGenBuffers(1, &rectVAO);
        glGenBuffers(1, &rectVBO);
        glGenBuffers(1, &rectEBO);

        glBindVertexArray(rectVAO);

        glBindBuffer(GL_ARRAY_BUFFER, rectVBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(rectVertices), rectVertices, GL_STATIC_DRAW);

        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, rectEBO);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(rectIndices), rectIndices, GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), reinterpret_cast<void *>(0));
        glEnableVertexAttribArray(0);

        glBindBuffer(GL_ARRAY_BUFFER, 0); // unbind

        glBindVertexArray(0);

        colorShader = new Shader{vertShaderSource, fragShaderSource};
    }

    void close() const {
        delete colorShader;
        glDeleteVertexArrays(1, &rectVAO);
        glDeleteBuffers(1, &rectVBO);
        glDeleteBuffers(1, &rectEBO);
    }

    static void drawRect(Rect rect);

private:
    float rectVertices[] {
        0.5f,  0.5f, 0.0f,  // top right
        0.5f, -0.5f, 0.0f,  // bottom right
        -0.5f, -0.5f, 0.0f,  // bottom left
        -0.5f,  0.5f, 0.0f   // top left
    };

    unsigned int rectIndices[] = {
        0, 1, 3,  // first Triangle
        1, 2, 3   // second Triangle
    };

    const char* vertShaderSource = "#version 330 core\n"
        "layout (location = 0) in vec3 aPos;\n"
        "void main()\n"
        "{\n"
        "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
        "}\0";

    const char* fragShaderSource = "#version 330 core\n"
        "out vec4 FragColor;\n"
        "uniform vec3 shapeColor;"
        "void main()\n"
        "{\n"
        "   FragColor = vec4(shapeColor, 1.0f);\n"
        "}\n\0";

    unsigned int rectVBO, rectVAO, rectEBO;

    Shader* colorShader{nullptr};
};

namespace ShapesN {
    struct Rect {
        int x{0};
        int y{0};
        int w{0};
        int h{0};
    };

    struct Circle {
        int x{0};
        int y{0};
        int radius{0};
    };

    inline float rectVertices[] {
        0.5f,  0.5f, 0.0f,  // top right
        0.5f, -0.5f, 0.0f,  // bottom right
        -0.5f, -0.5f, 0.0f,  // bottom left
        -0.5f,  0.5f, 0.0f   // top left
    };

    inline void drawRect(Rect& rect) {

    }

    inline void drawRect(Rect&& rect, Shader& shader) {

    }
}

#endif //SHAPES_H
