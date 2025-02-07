//
// Created by AnkenWannePC on 31/01/2025.
//

#include "texture.h"

#define STB_IMAGE_IMPLEMENTATION
#include <STB/stb_image.h>

#include <iostream>
#include <ostream>

Texture::Texture(const char* path) {
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
