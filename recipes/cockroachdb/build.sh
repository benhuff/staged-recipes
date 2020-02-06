#!/usr/bin/env bash

set -ex

echo $PWD
ls
mkdir build
cp $SRC_DIR/cockroachdb build
cd build
ls

export CGO_ENABLED=1
make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
