#!/bin/sh
# NEUTRON_APP_NAME installer

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INSTALL_DIR="$HOME/.local/share/NEUTRON_INTERNAL_APP_NAME"
BIN_DIR="$HOME/.local/bin"

echo "Installing NEUTRON_APP_NAME..."

mkdir -p "$INSTALL_DIR"
cp -r "$SCRIPT_DIR/app/." "$INSTALL_DIR/"

mkdir -p "$BIN_DIR"
ln -sf "$INSTALL_DIR/launch-app" "$BIN_DIR/NEUTRON_INTERNAL_APP_NAME"

echo "NEUTRON_APP_NAME installed to $INSTALL_DIR"
echo "Launcher symlinked to $BIN_DIR/NEUTRON_INTERNAL_APP_NAME"
echo "To uninstall, run: $SCRIPT_DIR/uninstall.sh"
