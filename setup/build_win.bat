@echo off
setlocal

set SCRIPT_DIR=%~dp0
cd /d %SCRIPT_DIR%\..

set MINGW_PATH=C:\Program Files\mingw64
set PATH=%MINGW_PATH%\bin;%PATH%

echo == config CMake with MinGW ==
cmake -B build -S . -G "Ninja" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DCMAKE_C_COMPILER="%MINGW_PATH%\bin\gcc.exe" ^
    -DCMAKE_CXX_COMPILER="%MINGW_PATH%\bin\g++.exe" ^
    -DCMAKE_TOOLCHAIN_FILE=.\vcpkg\scripts\buildsystems\vcpkg.cmake ^
    -DVCPKG_TARGET_TRIPLET=x64-mingw-static

echo == building ==
cmake --build build

echo ==== Running project ====
build\nebby.exe

pause