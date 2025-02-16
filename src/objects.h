//
// Created by Jens  on 16/0Kromdijk2/2025.
//

#ifndef OBJECTS_H
#define OBJECTS_H

#include <glad/glad.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "shader.h"
#include "objectShapes3D.h"

namespace Objects {
    struct Cube {
        glm::vec3 position;
        glm::vec3 scale;
    };
};

class ObjectHandler {
public:
    ObjectHandler() = default;

    void init() {
        glGenVertexArrays(1, &cubeVAO);
        glGenBuffers(1, &cubeVBO);

        glBindBuffer(GL_ARRAY_BUFFER, cubeVBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(Shapes3D::cubeVertices), Shapes3D::cubeVertices, GL_STATIC_DRAW);

        glBindVertexArray(cubeVAO);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), reinterpret_cast<void *>(0));
        glEnableVertexAttribArray(0);
    }

    void drawCube(const Shader& shader, const Objects::Cube& cube, const glm::mat4& projection, const glm::mat4& view) const {
        shader.use();
        shader.setMat4("projection", projection);
        shader.setMat4("view", view);

        glm::mat4 model {1.0f};
        model = glm::translate(model, cube.position);
        model = glm::scale(model, cube.scale);

        shader.setMat4("model", model);

        glBindVertexArray(cubeVAO);
        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

private:
    unsigned int cubeVAO, cubeVBO;
};

#endif //OBJECTS_H
