@echo off

if not exist build (
    mkdir build
)

odin build .\odin_lib\ -build-mode:shared -out:build/odin_lib_shared.dll > nul
clang c_app\app.c -o app_shared.exe -Lbuild -lodin_lib_shared

@copy /y "build\odin_lib_shared.dll" "odin_lib_shared.dll" > nul
