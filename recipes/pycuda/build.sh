#!/usr/bin/env bash

export CUDA_HOME="/user/local/cuda"
echo ${CUDA_HOME}
${SRC_DIR}/etc/aksetup-defaults.py
$SRC_DIR/siteconf.py