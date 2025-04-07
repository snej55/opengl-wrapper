#ifndef POSTPROCESSING_H
#define POSTPROCESSING_H

class PostProcessor
{
public:
    PostProcessor() = default;
    PostProcessor(const int width, const int height)
    {
        init(width, height);
    }

    ~PostProcessor()
    {
        free();
    };

    void init(const int width, const int height)
    {
        unsigned int framebuffer;
        glGenFramebuffers(1, &framebuffer);
        glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);

        // generate texture
        unsigned int textureColorBuffer;
        glGenTextures(1, &textureColorBuffer);
        glBindTexture(GL_TEXTURE_2D, textureColorBuffer);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, nullptr);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

        // attach to framebuffer
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureColorBuffer, 0);

        // generate render buffer object
        unsigned int rbo;
        glGenRenderbuffers(1, &rbo);
        glBindRenderbuffer(GL_RENDERBUFFER, rbo);
        glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH24_STENCIL8, width, height);
        glBindRenderbuffer(GL_RENDERBUFFER, 0);

        // attach render buffer object
        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, rbo);

        // check
        if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
        {
            std::cout << "ERROR::FRAMEBUFFER Framebuffer is not complete!" << std::endl;
        } else
        {
            std::cout << "Successfully initialized postprocessor!" << std::endl;
        }
        glBindFramebuffer(GL_FRAMEBUFFER, 0);

        // set FBO & RBO fields
        FBO = framebuffer;
        RBO = rbo;
    }

    void free() const
    {
        glDeleteRenderbuffers(1, &RBO);
        glDeleteFramebuffers(1, &FBO);
    }

    void enable() const
    {
        glBindFramebuffer(GL_FRAMEBUFFER, FBO);
    }

    void disable() const
    {
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
    }

private:
    int _width{0};
    int _height{0};

    unsigned int FBO{0};
    unsigned int RBO{0};
};

#endif