#!/usr/bin/env bash

set -ex

export GOPATH="${BUILD_PREFIX}/bin"
export GOROOT="${BUILD_PREFIX}/go"

sudo make build
sudo make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
