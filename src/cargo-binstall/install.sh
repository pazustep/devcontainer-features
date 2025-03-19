#!/bin/bash -xe
if ! type cargo-binstall &> /dev/null; then
  RUST_TRIPLET=$(rustc -vV|awk '/^host/ { print $2 }')
  WORKDIR=$(mktemp -d)
  ARCHIVE="cargo-binstall-${RUST_TRIPLET}.tgz"
  echo "Installing cargo-binstall ${VERSION}..."
  curl --output-dir "${WORKDIR}" -O -sSL "https://github.com/cargo-bins/cargo-binstall/releases/download/v${VERSION}/${ARCHIVE}"
  tar -C "${WORKDIR}" -xzf "${WORKDIR}/${ARCHIVE}"
  sudo chown "$_REMOTE_USER" "$CARGO_HOME/bin"
  install "${WORKDIR}/cargo-binstall" "${CARGO_HOME}/bin"
else
  echo "cargo-binstall is already installed"
fi
