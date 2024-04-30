#!/bin/bash

set -ex

# cd apis/python

# $PYTHON setup.py install --single-version-externally-managed --record record.txt --libtiledbvcf="${PREFIX}"

# $PYTHON setup.py clean --all

export TILEDBSOMA_PATH=$PREFIX
$PYTHON -m pip install --no-deps --no-build-isolation -vv apis/python
