@echo off

set SCRIPT_DIR=%~dp0
cd /d %SCRIPT_DIR%\..

echo == config ==
cmake --preset nebby

echo == building ==
cmake --build --preset nebby

echo ************************************
echo ==== Running project ====
build\nebby\nebby.exe

pause