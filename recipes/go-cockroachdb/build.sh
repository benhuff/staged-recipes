#!/usr/bin/env bash

set -ex

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin