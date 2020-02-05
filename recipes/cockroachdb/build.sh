#!/usr/bin/env bash

set -ex

export CGO_ENABLED=1
make build
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
