#!/bin/bash

set -ex

export LIBTILEDBVCF_PATH=$PREFIX/lib/

# Copy version.py from Python sdist for setuptools-scm
cp python-sdist/src/tiledbvcf/version.py apis/python/src/tiledbvcf/

$PYTHON -m pip install --no-deps --no-build-isolation -v apis/python
