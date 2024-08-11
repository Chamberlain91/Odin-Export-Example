@echo off

if not exist build (
    mkdir build
)

odin build .\odin_lib\ -build-mode:static -out:build/odin_lib_static.lib > nul
clang c_app\app.c -o app_static.exe -Lbuild -lodin_lib_static
