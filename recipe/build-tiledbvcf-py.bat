@echo on

@REM cd apis\python

@REM %PYTHON% setup.py install --single-version-externally-managed --record record.txt --libtiledbvcf="%LIBRARY_PREFIX%"
@REM if %ERRORLEVEL% neq 0 exit 1

@REM %PYTHON% setup.py clean --all
@REM if %ERRORLEVEL% neq 0 exit 1

set "TILEDBSOMA_PATH=%LIBRARY_PREFIX%"
%PYTHON% -m pip install --no-deps --no-build-isolation -vv apis\python
if %ERRORLEVEL% neq 0 exit 1
