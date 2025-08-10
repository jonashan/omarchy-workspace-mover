PLUGIN_REPO_URL=$(git remote get-url origin)
BIN_PATH="$HOME/.local/bin"
PLUGIN_PATH="$HOME/.config/omarchy/plugins"
PLUGIN_NAME=$(basename -s .git "$PLUGIN_REPO_URL")
HYPRLAND_CONFIG_FILE="$HOME/.config/hypr/hyprland.conf"

# Remove plugin binaries
if [ -d "$PLUGIN_PATH/$PLUGIN_NAME/bin" ]; then
  for file in "$PLUGIN_PATH/$PLUGIN_NAME/bin"/*; do
    if [ -f "$file" ]; then
      binary_name=$(basename "$file")
      if [ -f "$BIN_PATH/$binary_name" ]; then
        rm "$BIN_PATH/$binary_name"
      fi
    fi
  done
fi

# Remove hyprland config sources
if [ -f "$HYPRLAND_CONFIG_FILE" ] && [ -d "$PLUGIN_PATH/$PLUGIN_NAME/hypr" ]; then
  for file in "$PLUGIN_PATH/$PLUGIN_NAME/hypr"/*; do
    if [ -f "$file" ]; then
      # Remove the source line from hyprland config
      sed -i "\|source = $file|d" "$HYPRLAND_CONFIG_FILE"
    fi
  done
fi

# Remove plugin directory
rm -rf "$PLUGIN_PATH/$PLUGIN_NAME"
