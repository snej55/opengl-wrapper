//
// Created by Jens Kromdijk on 22/02/2025.
//

#ifndef POSTPROCESSING_H
#define POSTPROCESSING_H

#include <glad/glad.h>

// for quad vertices
#include "objectShapes3D.h"
#include "shader.h"

#include <iostream>


class FramebufferObject
{
public:
    FramebufferObject() = default;

    int init(const int width, const int height)
    {
        glGenFramebuffers(1, &FBO);
        glBindFramebuffer(GL_FRAMEBUFFER, FBO);
        //
        // unsigned int textureColorBuffer;
        // glGenTextures(1, &textureColorBuffer);
        // glBindTexture(GL_TEXTURE_2D, textureColorBuffer);
        // glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, nullptr);
        // glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        // glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        // glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureColorBuffer, 0);
        //
        // unsigned int rbo;
        // glGenRenderbuffers(1, &rbo);
        // glBindRenderbuffer(GL_RENDERBUFFER, rbo);
        // glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH24_STENCIL8, width, height);
        // glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, rbo);
        // _width = width;
        // _height = height;

        bind2NewTex();
        enableDepthStencilTesting();
        return check();
    }

    void activate() const
    {
        glBindFramebuffer(GL_FRAMEBUFFER, FBO);
        glEnable(GL_DEPTH_TEST);
    }

    void close() const
    {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
    }

    void clear()
    {
        // make sure to activate before calling this function
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }

    void free() const
    {
        glDeleteRenderbuffers(1, &RBO);
        glDeleteFramebuffers(1, &FBO);
    }

    int check() const
    {
        activate();

        if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
        {
            std::cout << "ERROR::FRAMEBUFFER:: Framebuffer is not complete!" << std::endl;
            return -1;
        }

        close();

        return 0;
    }


    unsigned int genTexture(int width = 0, int height = 0)
    {
        // generate texture for fbo to use
        unsigned int tex;

        // make sure width/height values are not null
        width = !width ? _width : width;
        height = !height ? _height : height;

        glGenTextures(1, &tex);
        glBindTexture(GL_TEXTURE_2D, tex);

        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA16F, width, height, 0, GL_RGBA16F, GL_UNSIGNED_BYTE, nullptr);

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

        _texture = tex;

        return tex;
    }

    void bind2Tex(const unsigned int tex)
    {
        // bind to texture
        _texture = tex;
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, _texture, 0);
    }

    void bind2NewTex()
    {
        // generate texture and bind to that
        const unsigned int tex{genTexture(_width, _height)};
        _texture = tex;
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, tex, 0);
    }

    void bindTex() const
    {
        glBindTexture(GL_TEXTURE_2D, _texture);
    }

    void enableDepthStencilTesting()
    {
        glGenRenderbuffers(1, &RBO);
        glBindRenderbuffer(GL_RENDERBUFFER, RBO);
        glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH24_STENCIL8, _width, _height);
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, RBO);
        // glBindRenderbuffer(GL_RENDERBUFFER, 0);
    }

    [[nodiscard]] unsigned int getFBO() const
    {
        return FBO;
    }

    [[nodiscard]] unsigned int getRBO() const
    {
        return RBO;
    }

    [[nodiscard]] unsigned int getTex() const
    {
        return _texture;
    }

private:
    unsigned int FBO;
    unsigned int RBO;
    unsigned int _texture{0};

    int _width{0}, _height{0};
};

class PostProcessor
{
public:
    PostProcessor() = default;

    int init(const int width, const int height)
    {
        glGenVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);

        glBindVertexArray(VAO);

        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(Shapes3D::quadVerticesTexCoords), Shapes3D::quadVerticesTexCoords,
                     GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), reinterpret_cast<void *>(0));
        glEnableVertexAttribArray(0);
        glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), reinterpret_cast<void *>(3 * sizeof(float)));
        glEnableVertexAttribArray(1);

        glBindVertexArray(0);

        return fbo.init(width, height);
    }

    void start() const
    {
        activate();
    }

    void end() const
    {
        close();
        glDisable(GL_DEPTH_TEST);
    }

    void draw(const Shader &shader) const
    {
        // clear
        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        shader.use();

        glActiveTexture(GL_TEXTURE0);
        fbo.bindTex();

        shader.setInt("screenTexture", 0);
        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0, 6);
    }

    void activate() const
    {
        fbo.activate();
    }

    void close() const
    {
        fbo.close();
    }

    void free() const
    {
        fbo.free();
    }

    [[nodiscard]] unsigned int getTex() const
    {
        return fbo.getTex();
    }

private:
    FramebufferObject fbo{};

    unsigned int VAO, VBO;
};

#endif //POSTPROCESSING_H
