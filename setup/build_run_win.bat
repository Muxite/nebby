@echo off
setlocal

set SCRIPT_DIR=%~dp0
cd /d %SCRIPT_DIR%\..

echo == building ==
cmake --preset=nebby-win
cmake --build --preset=nebby-win

echo ==== Running project ====
build\nebby-win\nebby.exe

pause