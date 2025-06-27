#!/bin/bash
set -e
cd "$(dirname "$0")/.."

echo "== Configuring =="
cmake --preset nebby

echo "== Building =="
cmake --build --preset nebby

echo "== Running =="
./build/nebby/nebby