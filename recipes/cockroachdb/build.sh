#!/usr/bin/env bash

set -ex

make
make install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
