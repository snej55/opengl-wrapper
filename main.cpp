#include "src/app.h"

int main() {

    // initialization
    App app{640, 640, "OpenGL window"};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();
        app.clear();

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}