//
// Created by jenskromdijk3 on 2/12/25.
//

#ifndef MODEL_H
#define MODEL_H

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

#include <stb/stb_image.h>

#include "mesh.h"

class Model {
public:
    Model(const std::string &path);

    void Draw(const Shader& shader);

private:
    std::vector<Mesh> meshes;
    std::string directory;

    void loadModel(const std::string &path);
    void processNode(aiNode* node, const aiScene* scene);
    Mesh processMesh(aiMesh* mesh, const aiScene* scene);
    std::vector<MeshN::Tex> loadMaterialTextures(aiMaterial* mat, aiTextureType type, std::string type_name);
};


#endif //MODEL_H
