#!/usr/bin/env bash

set -evx

export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
make
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
