//
// Created by AnkenWannePC on 31/01/2025.
//

#ifndef TEXTURE_H
#define TEXTURE_H

#include <glad/glad.h>

class Texture {
public:
    unsigned int TEX{0};

    explicit Texture(const char* path);

    void activate(int slot) const;

    [[nodiscard]] int getWidth() const;
    [[nodiscard]] int getHeight() const;
    [[nodiscard]] int getNumOfChannels() const;

private:
    int _width{}, _height{};
    int _nrChannels{};
};



#endif //TEXTURE_H
