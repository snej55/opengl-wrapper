## What is this?
This is a simple opengl wrapper, with support for rendering 2D shapes & textures, as well as 3D objects and model loading, with basic lighting.

## Build instructions
The project is currently setup with a basic skybox example. To build it, use CMake and ninja-build (or a different generator):

```
# clone repo
git clone https://github.com/snej55/opengl-wrapper.git
cd opengl-wrapper

# generate cmake files
cmake -S . -B bin -G Ninja
cd bin

# build
ninja -j14
```

The option `-j14` is just to allow ninja to use multiple cpu cores (speeds it up). It is recommended to use the number of cores your cpu has minus 2.
