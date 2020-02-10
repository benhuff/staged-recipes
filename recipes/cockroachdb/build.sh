#!/usr/bin/env bash

set -evx

make distclean
make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
