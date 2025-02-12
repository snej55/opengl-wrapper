//
// Created by jenskromdijk3 on 2/11/25.
//

#ifndef MESH_H
#define MESH_H

#include <glm/glm.hpp>

#include <string>
#include <vector>

#include "shader.h"

namespace MeshN {
    struct Vertex {
        glm::vec3 position;
        glm::vec3 normal;
        glm::vec2 texCoords;
    };

    struct Tex {
        unsigned int id;
        std::string type;
    };
}

class Mesh {
public:
    std::vector<MeshN::Vertex> vertices;
    std::vector<unsigned int> indices;
    std::vector<MeshN::Tex> textures;

    Mesh(const std::vector<MeshN::Vertex>& vertices, const std::vector<unsigned int>& indices, const std::vector<MeshN::Tex>& textures);

    void Draw(const Shader &shader);

private:
    unsigned int VAO, VBO, EBO;

    void setupMesh();
};



#endif //MESH_H
