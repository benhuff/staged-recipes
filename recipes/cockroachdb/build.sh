#!/usr/bin/env bash

set -evx

gcc -print-sysroot

echo ${SRC_DIR}
echo ${SRC_DIR}/src/github.com/cockroachdb/cockroach/c-deps/jemalloc/

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
