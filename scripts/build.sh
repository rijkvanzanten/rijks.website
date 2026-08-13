#!/usr/bin/env sh

set -eu

ZOLA_VERSION="0.23.3"
ZOLA_SHA256="f07c92607e5745268b576bd325ceef3a582aada253bb64db8d92a8a85303d958"
ZOLA_ARCHIVE="zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
ZOLA_URL="https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/${ZOLA_ARCHIVE}"

if [ "$(uname -s)" != "Linux" ] || [ "$(uname -m)" != "x86_64" ]; then
	echo "Unsupported platform: $(uname -s) $(uname -m)" >&2
	exit 1
fi

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
PROJECT_ROOT=$(dirname "$SCRIPT_DIR")
TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT HUP INT TERM

curl -fsSL "$ZOLA_URL" -o "$TEMP_DIR/$ZOLA_ARCHIVE"
printf '%s  %s\n' "$ZOLA_SHA256" "$TEMP_DIR/$ZOLA_ARCHIVE" | sha256sum --check --status
tar -xzf "$TEMP_DIR/$ZOLA_ARCHIVE" -C "$TEMP_DIR"

cd "$PROJECT_ROOT"
"$TEMP_DIR/zola" build "$@"
