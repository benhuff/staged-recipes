#!/usr/bin/env bash

set -evx

# CMAKE_PREFIX_PATH=$PREFIX:$BUILD_PREFIX/x86_64-conda_cos6-linux-gnu/sysroot/usr

ln -s -t "${CMAKE_PREFIX_PATH}/include/stdlib.h" /home/conda/staged-recipes/build_artifacts/cockroachdb_1581438316139/work/src/github.com/cockroachdb/cockroach/c-deps/jemalloc/src/jemalloc.c

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
