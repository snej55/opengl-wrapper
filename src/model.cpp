//
// Created by jenskromdijk3 on 2/12/25.
//

#include "model.h"

#include <iostream>
#include <ostream>

Model::Model(const std::string &path) {
    loadModel(path);
}

void Model::Draw(const Shader& shader) {
    for (unsigned int i{0}; i < meshes.size(); ++i) {
        meshes[i].Draw(shader);
    }
}

void Model::loadModel(const std::string &path) {
    Assimp::Importer importer;
    const aiScene* scene = importer.ReadFile(path.c_str(), aiProcess_Triangulate | aiProcess_FlipUVs | aiProcess_GenNormals);
    if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode) {
        std::cout << "ERROR::ASSIMP::" << importer.GetErrorString() << std::endl;
        return;
    }
    directory = path.substr(0, path.find_last_of('/'));

    processNode(scene->mRootNode, scene);
}

void Model::processNode(aiNode *node, const aiScene *scene) {
    // process node's meshes
    for (unsigned int i {0}; i < node->mNumMeshes; ++i) {
        aiMesh* mesh {scene->mMeshes[i]};
        meshes.push_back(processMesh(mesh, scene));
    }
    // do the same for its children
    for (unsigned int i{0}; i < node->mNumChildren; ++i) {
        processNode(node->mChildren[i], scene);
    }
}

Mesh Model::processMesh(aiMesh *mesh, const aiScene *scene) {
    std::vector<MeshN::Vertex> vertices;
    std::vector<unsigned int> indices;
    std::vector<MeshN::Tex> textures;
    for (unsigned int i{0}; i < mesh->mNumVertices; ++i) {
        MeshN::Vertex vertex{};
        glm::vec3 vector;
        vector.x = mesh->mVertices[i].x;
        vector.y = mesh->mVertices[i].y;
        vector.z = mesh->mVertices[i].z;
        vertex.position = vector;
        vector.x = mesh->mNormals[i].x;
        vector.y = mesh->mNormals[i].y;
        vector.z = mesh->mNormals[i].z;
        vertex.normal = vector;
        if (mesh->mTextureCoords[0]) {
            glm::vec2 vec;
            vec.x = mesh->mTextureCoords[0][i].x;
            vec.y = mesh->mTextureCoords[0][i].y;
            vertex.texCoords = vec;
        } else {
            vertex.texCoords = glm::vec2(0.0f, 0.0f);
        }
    }

    for (unsigned int i{0}; i < mesh->mNumFaces; ++i) {
        aiFace face = mesh->mFaces[i];
        for (unsigned int j{0}; j < face.mNumIndices; ++j) {
            indices.push_back(face.mIndices[j]);
        }
    }

    if (mesh->mMaterialIndex) {
        aiMaterial* material {scene->mMaterials[mesh->mMaterialIndex]};
        std::vector<MeshN::Tex> diffuseMaps {loadMaterialTextures(material, aiTextureType_DIFFUSE, "texture_diffuse")};
        textures.insert(textures.end(), diffuseMaps.begin(), diffuseMaps.end());
        std::vector<MeshN::Tex> specularMaps {loadMaterialTextures(material, aiTextureType_SPECULAR, "texture_specular")};
        textures.insert(textures.end(), specularMaps.begin(), specularMaps.end());
    }

    return {vertices, indices, textures};
}

std::vector<MeshN::Tex> Model::loadMaterialTextures(aiMaterial* mat, aiTextureType type, std::string typeName) {
    std::vector<MeshN::Tex> textures;
    for (unsigned int i{0}; i < mat->GetTextureCount(type); ++i) {
        aiString str;
        mat->GetTexture(type, i, &str);
        MeshN::Tex texture;
        // texture.id =
    }
    return textures;
}