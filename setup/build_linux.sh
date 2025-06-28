#!/bin/bash
set -e
cd "$(dirname "$0")/.."

echo "== Configuring =="
cmake --preset nebby-linux

echo "== Building =="
cmake --build --preset nebby-linux

echo "== Running =="
./build/nebby/nebby