#!/usr/bin/env bash
set -e

THEME_NAME="Vesper"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$SCRIPT_DIR/$THEME_NAME"
TARGET="$HOME/.local/share/icons/$THEME_NAME"

echo "Installing $THEME_NAME icon theme..."

# Remove existing install
if [ -d "$TARGET" ]; then
  echo "Removing existing $TARGET..."
  rm -rf "$TARGET"
fi

# Copy theme
cp -r "$SOURCE" "$TARGET"

# Generate icon cache if available
if command -v gtk-update-icon-cache &>/dev/null; then
  gtk-update-icon-cache -f -q "$TARGET" && echo "Icon cache generated."
else
  echo "gtk-update-icon-cache not found — skipping cache (icons still work)."
fi

echo ""
echo "Installed to: $TARGET"
echo ""
echo "To apply:"
echo "  gsettings set org.gnome.desktop.interface icon-theme \"$THEME_NAME\""
echo "Or use nwg-look to select '$THEME_NAME'."
