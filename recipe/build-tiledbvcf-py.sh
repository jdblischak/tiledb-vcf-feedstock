#!/bin/bash

set -ex

export LIBTILEDBVCF_PATH=$PREFIX/lib/
$PYTHON -m pip install --no-deps --no-build-isolation -vv apis/python
