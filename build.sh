#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="/usr/local/bin/gamescope-manager"

chmod +x "$SCRIPT_DIR/gamescope-manager"

if [ -L "$TARGET" ] || [ -e "$TARGET" ]; then
    sudo rm "$TARGET"
fi

sudo ln -s "$SCRIPT_DIR/gamescope-manager" "$TARGET"

echo "Installed gamescope-manager to $TARGET"