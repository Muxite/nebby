@echo off

set SCRIPT_DIR=%~dp0
cd /d %SCRIPT_DIR%\..
set MINGW_PATH=C:\Program Files\mingw64
set PATH=%MINGW_PATH%\bin;%PATH%


echo == bootstrapping vcpkg ==
call vcpkg\bootstrap-vcpkg.bat -disableMetrics

echo == installing dependencies ==
call vcpkg\vcpkg.exe install --triplet x64-mingw-static

pause