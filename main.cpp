#include "src/app.h"

int main()
{
    // initialization
    App app{640, 640, "OpenGL window"};
    app.enableDepthTesting();
    app.setCameraEnabled(true);

    // main loop
    while (!app.shouldClose())
    {
        // for wireframe rendering
        app.handleInput();
        
        app.clear();

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}