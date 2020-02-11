#!/usr/bin/env bash

set -evx

# echo ${SRC_DIR}
# echo ${SRC_DIR}/src/github.com/cockroachdb/cockroach/c-deps/jemalloc/

ln -s "$SRC_DIR" "$GOPATH/src/github.com/cockroachdb/cockroach"

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
