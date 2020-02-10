#!/usr/bin/env bash

set -ex

echo $PWD
ls

mkdir build
ls

cp $SRC_DIR/cockroach build
cd build
ls

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
