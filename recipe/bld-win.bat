REM Based on bld.bat from pysyntect-feedstock
REM https://github.com/conda-forge/pysyntect-feedstock/

REM Set up rust environment
set CARGO_HOME=%CONDA_PREFIX%\.cargo.win
set CARGO_CONFIG=%CARGO_HOME%\config
set RUSTUP_HOME=%CARGO_HOME%\rustup

echo "Building %PKG_NAME%"

REM Create temp folder
mkdir %CD%\tmpbuild_%PKG_NAME%_%PY_VER%
set TEMP=%CD%\tmpbuild_%PKG_NAME%_%PY_VER%

REM Print Rust version
rustc --version

REM set UTF-8 mode by default
chcp 65001
set PYTHONUTF8=1
set PYTHONIOENCODING="UTF-8"
%PYTHON% -m pip install . --no-deps --ignore-installed -vv
