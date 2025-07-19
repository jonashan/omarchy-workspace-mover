REPO_URL=$(git remote get-url origin)
PLUGIN_PATH="$HOME/.config/omarchy/plugins"
PLUGIN_NAME=$(basename -s .git "$REPO_URL")
BIN_DIR="$(dirname "$0")"

echo -e "\n\e[33mUpdating plugin: $PLUGIN_NAME\e[0m"

if [ ! -d "$PLUGIN_PATH/$PLUGIN_NAME" ]; then
  echo "Error: Plugin '$PLUGIN_NAME' not found."
  exit 1
fi

# Get the original repository URL before removal
cd "$PLUGIN_PATH/$PLUGIN_NAME"
ls -la
if [ -z $REPO_URL ]; then
  echo "Error: Could not determine plugin repository URL."
  exit 1
fi

cd ~

# Remove old installation completely
if ! omarchy-plugin-remove "$PLUGIN_NAME"; then
  echo "Error: Failed to remove old installation."
  exit 1
fi

# Fresh install with latest code
if ! omarchy-plugin-install "$REPO_URL"; then
  echo "Error: Failed to install updated plugin."
  exit 1
fi
