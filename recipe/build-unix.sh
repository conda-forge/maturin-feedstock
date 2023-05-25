# Based on the build.sh for the pysyntect-feedstock recipe.
# https://github.com/conda-forge/pysyntect-feedstock/
set -ex

# Set up rust environment
export CARGO_HOME=${CONDA_PREFIX}/.cargo.$(uname)
export CARGO_CONFIG=${CARGO_HOME}/config
export RUSTUP_HOME=${CARGO_HOME}/rustup

# Print Rust version
rustc --version

# Install wheel manually
$PYTHON -m pip install . --no-deps --no-build-isolation --ignore-installed -vv
