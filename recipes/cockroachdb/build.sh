#!/usr/bin/env bash

set -ex
echo which go
export CGO_ENABLED=0
export GOPATH="${BUILD_PREFIX}/bin"
export GOROOT="${CONDA_PREFIX}/go"

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
