#!/usr/bin/env bash

set -ex

set CGO_ENABLED=1
make build
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
