#!/bin/bash

set -ex

export LIBTILEDBVCF_PATH=$PREFIX/lib/
cd python-sdist/
$PYTHON -m pip install --no-deps --no-build-isolation -v .
