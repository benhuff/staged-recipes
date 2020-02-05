#!/usr/bin/env bash

set -ex

export GOPATH="${BUILD_PREFIX}/bin"
export GOROOT="${CONDA_PREFIX}/go"

which go
echo $GOROOT

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
