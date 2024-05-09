@echo on

set "LIBTILEDBVCF_PATH=%LIBRARY_LIB%"

rem Copy version.py from Python sdist for setuptools-scm
copy python-sdist\src\tiledbvcf\version.py apis\python\src\tiledbvcf
if %ERRORLEVEL% neq 0 exit 1

%PYTHON% -m pip install --no-deps --no-build-isolation -v apis\python
if %ERRORLEVEL% neq 0 exit 1
