#include "src/app.h"
#include "src/terrain.h"

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
        // glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
        app.handleInput();
        
        app.clear();

        app.tick();
    }

    // clean up
    app.close();

    return 0;
}