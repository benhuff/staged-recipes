#!/usr/bin/env bash

ln -s ${CUDA_HOME}/include/* ${CONDA_PREFIX}/include/

./configure.py
python setup.py build
python setup.py install