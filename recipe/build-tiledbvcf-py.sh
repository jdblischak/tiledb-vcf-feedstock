#!/bin/bash

set -ex

export LIBTILEDBVCF_PATH=$PREFIX/lib/
ls -R ${SRC_DIR}
cd ${SRC_DIR}/python-sdist/
$PYTHON -m pip install --no-deps --no-build-isolation -v .
