#!/bin/sh
# Build the book into ./book with the pinned mdBook release. The release is
# downloaded once into ./.tools and checked against its SHA-256 before use.
# Usage: ./build.sh            (Linux x86-64; needs curl and tar)
set -eu
MDBOOK_VERSION=v0.5.4
MDBOOK_SHA256=5222beabd3e37dc5be0d18ff99b79058469354db5c220153a1b92db5ba12be89
HERE=$(cd "$(dirname "$0")" && pwd)
TOOLS="$HERE/.tools"
MDBOOK="$TOOLS/mdbook"

if [ ! -x "$MDBOOK" ] || ! "$MDBOOK" --version | grep -q "mdbook ${MDBOOK_VERSION#v}\$"; then
  mkdir -p "$TOOLS"
  tarball="$TOOLS/mdbook-$MDBOOK_VERSION.tar.gz"
  curl -fsSL -o "$tarball" \
    "https://github.com/rust-lang/mdBook/releases/download/$MDBOOK_VERSION/mdbook-$MDBOOK_VERSION-x86_64-unknown-linux-musl.tar.gz"
  echo "$MDBOOK_SHA256  $tarball" | sha256sum -c - >/dev/null || { echo "build: the mdBook download does not match its checksum" >&2; rm -f "$tarball"; exit 1; }
  tar -xzf "$tarball" -C "$TOOLS" mdbook
  rm -f "$tarball"
fi
"$MDBOOK" build "$HERE"
echo "build: the book is in $HERE/book"
