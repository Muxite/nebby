#!/bin/bash
set -e
cd "$(dirname "$0")/.."

echo "== Configuring =="
cmake --preset nebby-osx

echo "== Building =="
cmake --build --preset nebby-osx

echo "== Running =="
./build/nebby/nebby