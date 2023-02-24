@echo on

mkdir libtiledbvcf-build
cd libtiledbvcf-build

cmake ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DOVERRIDE_INSTALL_PREFIX=OFF ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DFORCE_EXTERNAL_HTSLIB=OFF ^
  ../libtiledbvcf
if %ERRORLEVEL% neq 0 exit 1

nmake
if %ERRORLEVEL% neq 0 exit 1

nmake install-libtiledbvcf
if %ERRORLEVEL% neq 0 exit 1
