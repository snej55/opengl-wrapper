//
// Created by Jens Kromdijk on 31/01/2025.
//

#include "texture.h"

#include <iostream>
#include <ostream>

Texture::Texture(const char* path) {
    loadFromFile(path);
}

void Texture::loadFromFile(const char* path) {
    unsigned int tex;
    glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);

    // tex wrap params
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    // tex filtering params
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    stbi_set_flip_vertically_on_load(true);
    unsigned char* data = stbi_load(path, &_width, &_height, &_nrChannels, 0);
    if (data) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, _width, _height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    } else {
        std::cout << "Failed to load texture" << std::endl;
    }
    stbi_image_free(data);

    TEX = tex;
}

void Texture::activate(const int slot) const {
    glActiveTexture(GL_TEXTURE0 + slot);
    glBindTexture(GL_TEXTURE_2D, TEX);
}

int Texture::getWidth() const {
    return _width;
}

int Texture::getHeight() const {
    return _height;
}

int Texture::getNumOfChannels() const {
    return _nrChannels;
}

void TexHandler::init() {
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(TexRectVertices), TexRectVertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(RectIndices), RectIndices, GL_STATIC_DRAW);

    // vertex coordinates
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), reinterpret_cast<void*>(0));
    glEnableVertexAttribArray(0);
    // texture coordinates
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), reinterpret_cast<void*>(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // can safely unbind
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);

    texShader = new Shader{true, vertShaderSource, fragShaderSource};
}

void TexHandler::close() const {
    texShader->close();
    delete texShader;
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
}

void TexHandler::drawTexture(const Texture* texture, const FRect destination) const {
    glm::mat4 model {1.0f};
    model = glm::translate(model, glm::vec3(destination.x, destination.y, 0.0f));
    model = glm::scale(model, glm::vec3(destination.w, destination.h, 1.0f));

    // model = glm::scale(model, glm::vec3(0.5f, 0.5f, 1.0f));
    // model = glm::translate(model, glm::vec3(0.5f, 0.5f, 0.0f));

    texture->activate(GL_TEXTURE0);

    texShader->use();
    texShader->setMat4("model", model);
    texShader->setInt("tex", 0);
    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);
}
