#!/usr/bin/env bash

set -oex
ls

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
