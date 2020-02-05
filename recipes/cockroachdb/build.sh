#!/usr/bin/env bash

set -ex

export GOPATH="${BUILD_PREFIX}/bin"
export GOROOT="${BUILD_PREFIX}/go"

make clean
make build
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
