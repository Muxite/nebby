#!/bin/bash
set -e

# Get script's directory and cd to project root
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/.."

echo "== Bootstrapping vcpkg =="
./vcpkg/bootstrap-vcpkg.sh -disableMetrics

echo "== Installing dependencies =="
./vcpkg/vcpkg install --triplet x64-linux