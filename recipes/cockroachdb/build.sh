#!/usr/bin/env bash

set -evx

autoconf
./configure \
--with-jemalloc-prefix=je_

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
