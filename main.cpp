#include "src/app.h"

int main() {

    // initialization
    App app{640, 640, "OpenGL window"};

    Texture* texture {app.loadTexture("data/images/defblade_icon.png")};

    // main loop
    while (!app.shouldClose()) {
        app.handleInput();
        app.clear();

        app.drawRect({-0.75f, -0.5f, 0.5f, 0.3f}, {96, 174, 123});
        app.drawTexture(texture, {0.0f, 0.0f, 1.0f, 1.0f});

        app.tick();
    }

    // clean up
    app.freeTexture(texture);
    app.close();

    return 0;
}