# set requirements
cmake_minimum_required(VERSION 3.15)

# name of the project
project(nebby)

# version of cpp we are using
set(CMAKE_CXX_STANDARD 17)

# check our project directory (nebby, same as {CMAKE_SOURCE_DIR}) for the vcpkg submodule. 
if (EXISTS "${CMAKE_SOURCE_DIR}/vcpkg/scripts/buildsystems/vcpkg.cmake")
	# tell cmake to use vcpkg, CACHE STRING "" tells cmake to cache this.
	set(CMAKE_TOOLCHAIN_FILE "${CMAKE_SOURCE_DIR}/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
endif()

# this file will be executed, so we need a file called main.cpp
add_executable(nebby src/main.cpp)

# find these packages with vcpkg
find_package(fmt CONFIG REQUIRED)
find_package(SFML CONFIG REQUIRED COMPONENTS Graphics Window Audio Network)

target_link_libraries(nebby PRIVATE fmt::fmt SFML::Graphics SFML::Window SFML::Audio SFML::Network)
