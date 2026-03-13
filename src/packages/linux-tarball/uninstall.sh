#!/bin/sh
# NEUTRON_APP_NAME uninstaller

set -e

INSTALL_DIR="$HOME/.local/share/NEUTRON_INTERNAL_APP_NAME"
BIN_DIR="$HOME/.local/bin"

rm -rf "$INSTALL_DIR"
rm -f "$BIN_DIR/NEUTRON_INTERNAL_APP_NAME"

echo "NEUTRON_APP_NAME uninstalled."
