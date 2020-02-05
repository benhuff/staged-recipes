#!/usr/bin/env bash

set -ex
mkdir build
cd build

export CGO_ENABLED=1
make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
