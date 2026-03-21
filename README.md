## What is this?

Update: [https://github.com/snej55/mix_simulator](https://github.com/snej55/mix_simulator). (PBR Rendering, CSM, Scene management & more stuff).

This is a simple opengl wrapper, with support for rendering 2D shapes & textures, as well as 3D objects and model loading, with basic lighting.

![screenshot](https://github.com/snej55/opengl-wrapper/blob/master/screenshot.png)

## Build instructions
To build it, use CMake and ninja-build (or a different generator):

```
# clone repo
git clone https://github.com/snej55/opengl-wrapper.git
cd opengl-wrapper

# generate cmake files
cmake -S . -B bin -G Ninja
cd bin

# build
ninja
```
