#!/usr/bin/env bash

set -evx

# CMAKE_PREFIX_PATH=$PREFIX:$BUILD_PREFIX/x86_64-conda_cos6-linux-gnu/sysroot/usr

ln -s -t "${CONDA_BUILD_SYSROOT}/" ${SRC_DIR}/src/github.com/cockroachdb/cockroach/c-deps/

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
