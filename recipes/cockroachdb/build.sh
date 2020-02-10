#!/usr/bin/env bash

set -oex

cmake build
cmake install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
