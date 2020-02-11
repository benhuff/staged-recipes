#!/usr/bin/env bash

set -evx

make build --with-jemalloc-prefix=je_
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
