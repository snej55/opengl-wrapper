//
// Created by jenskromdijk3 on 2/6/25.
//

#ifndef APP_H
#define APP_H

#include <glad/glad.h>
#include <GLFW/glfw3.h>

class App {
public:
    App(int width, int height, const char* title);

    ~App();

    void run();

    void close();

private:
    GLFWwindow* _window{nullptr};
    int _width{0};
    int _height{0};

    bool init(int width, int height, const char* title);
};



#endif //APP_H
