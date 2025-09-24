#! /bin/bash

ROOT_DIR=$(realpath $(dirname $(dirname $BASH_SOURCE)))

echo $ROOT_DIR

meson build
cd "${ROOT_DIR}/build"
meson compile
chmod +x ./NailNail
./NailNail
