#!/usr/bin/env bash

set -evx

make
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
