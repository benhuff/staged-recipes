#!/usr/bin/env bash

set -ex
which go
echo $GOROOT

export GOPATH="${BUILD_PREFIX}/bin"
export GOROOT="${CONDA_PREFIX}/go"

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
