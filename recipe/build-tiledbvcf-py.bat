@echo on

set "LIBTILEDBVCF_PATH=%LIBRARY_LIB%"
cd %SRC_DIR%\python-sdist
%PYTHON% -m pip install --no-deps --no-build-isolation -v .
if %ERRORLEVEL% neq 0 exit 1
