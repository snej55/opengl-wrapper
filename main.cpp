#include "src/app.h"

int main() {

    App app{640, 480, "OpenGL window"};

    while (!app.shouldClose()) {
        app.handleInput();
        app.clear();

        app.drawRect({0, 0, 2, 3}, {255, 0, 0});

        app.tick();
    }

    app.close();

    return 0;
}