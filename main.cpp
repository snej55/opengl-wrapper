#include "src/app.h"

int main() {


    App app{640, 480, "OpenGL window"};

    while (!app.shouldClose()) {
        app.clear();

        app.tick();
    }

    app.close();

    return 0;
}