@echo off

set SCRIPT_DIR=%~dp0
cd /d %SCRIPT_DIR%\..

echo == bootstrapping vcpkg ==
call vcpkg\bootstrap-vcpkg.bat -disableMetrics

echo == installing dependencies ==
call vcpkg\vcpkg install --triplet=x64-windows

pause