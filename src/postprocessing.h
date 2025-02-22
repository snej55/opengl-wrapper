//
// Created by Jens Kromdijk on 22/02/2025.
//

#ifndef POSTPROCESSING_H
#define POSTPROCESSING_H

#include <glad/glad.h>

#include <iostream>

class FramebufferObject {
public:
    FramebufferObject() = default;

    int init(const int width, const int height) {
        glGenFramebuffers(1, &FBO);
        activate();

        _width = width;
        _height = height;

        bind2NewTex();
        enableDepthStencilTesting();
        return check();
    }

    void activate() const {
        glBindFramebuffer(GL_FRAMEBUFFER, FBO);
        glEnable(GL_DEPTH_TEST);
    }

    void close() const {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
    }

    void clear() {
        // make sure to activate before calling this function
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }

    void free() const {
        glDeleteRenderbuffers(1, &RBO);
        glDeleteFramebuffers(1, &FBO);
    }

    int check() const {
        activate();

        if (glCheckFramebufferStatus(GL_FRAMEBUFFER)) {
            std::cout << "ERROR::FRAMEBUFFER:: Framebuffer is not complete!" << std::endl;
            return -1;
        }

        close();

        return 0;
    }


    unsigned int genTexture(int width = 0, int height = 0) {
        // generate texture for fbo to use
        unsigned int tex;

        // make sure width/height values are not null
        width = !width ? _width : width;
        height = !height ? _height : height;

        glGenTextures(1, &tex);
        glBindTexture(GL_TEXTURE_2D, tex);

        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, nullptr);

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

        _texture = tex;

        return tex;
    }

    void bind2Tex(const unsigned int tex) {
        // bind to texture
        _texture = tex;
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, _texture, 0);
    }

    void bind2NewTex() {
        // generate texture and bind to that
        const unsigned int tex{genTexture(_width, _height)};
        _texture = tex;
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, tex, 0);
    }

    void bindTex() {
        glBindTexture(GL_TEXTURE_2D, _texture);
    }

    void enableDepthStencilTesting() {
        glGenRenderbuffers(1, &RBO);
        glBindRenderbuffer(GL_RENDERBUFFER, RBO);
        glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH24_STENCIL8, _width, _height);
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, RBO);
        glBindRenderbuffer(GL_RENDERBUFFER, 0);
    }

    unsigned int getFBO() const {
        return FBO;
    }

private:
    unsigned int FBO;
    unsigned int RBO;
    unsigned int _texture{0};

    int _width, _height;
};

class PostProcessor {
public:
    PostProcessor() = default;

    int init(const int width, const int height) {
        return fbo.init(width, height);
    }

    void activate() {
        fbo.activate();
    }

    void genFrameBufferObject();

private:
    FramebufferObject fbo{};
};

#endif //POSTPROCESSING_H
