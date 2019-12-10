#!/usr/bin/env bash

export PATH=${CUDA_HOME}/bin:${PATH}
ln -s ${CUDA_HOME}/include/* ${CONDA_PREFIX}/include/

./configure.py
python setup.py build
python setup.py install