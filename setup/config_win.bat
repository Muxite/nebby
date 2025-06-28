@echo off
setlocal

set SCRIPT_DIR=%~dp0
cd /d %SCRIPT_DIR%\..

set MINGW_PATH=C:\Program Files\mingw64
set PATH=%MINGW_PATH%\bin;%PATH%

if exist build\nebby-win (
    rmdir /s /q build\nebby-win
)

echo == configure with preset ==
cmake --preset=nebby-win

echo == building ==
cmake --build --preset=nebby-win

echo ==== Running project ====
build\nebby-win\nebby.exe

pause