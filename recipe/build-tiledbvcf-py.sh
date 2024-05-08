#!/bin/bash

set -ex

export LIBTILEDBVCF_PATH=$PREFIX/lib/
cd sdist/
$PYTHON -m pip install --no-deps --no-build-isolation -v .
