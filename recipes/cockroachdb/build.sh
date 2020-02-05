#!/usr/bin/env bash

set -ex

export CGO_ENABLED=1
go build
go install

mkdir -p $PREFIX/bin

mv out/cockroachdb $PREFIX/bin
