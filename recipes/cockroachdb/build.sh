#!/usr/bin/env bash

set -oex
set -fvisibility=hidden

make build
make install

mkdir -p $PREFIX/bin

mv out/cockroach $PREFIX/bin
