#!/usr/bin/env bash

set -evx

cd ${SRC_DIR}
ls

# echo ${SRC_DIR}/src/github.com/cockroachdb/cockroach/c-deps/jemalloc/

ln -s "$SRC_DIR/src/github.com/cockroachdb/cockroach" "$GOPATH/src/github.com/cockroachdb/cockroach"

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
