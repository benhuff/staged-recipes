#!/usr/bin/env bash

set -ex

export GOPATH="${BUILD_PREFIX}/bin"
export GOROOT="${CONDA_PREFIX}/go"

make build CGO_ENABLED=1
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
