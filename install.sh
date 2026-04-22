#!/bin/bash

# 1. Update and install basic tools (optional)
# sudo apt-get update && sudo apt-get install -y zsh

# 2. Symlink your dotfiles to the home directory
# This links .bashrc from your repo to your actual home folder
ln -sf "$(pwd)/.bashrc" "$HOME/.bashrc"
ln -sf "$(pwd)/.gitconfig" "$HOME/.gitconfig"

# 3. Create necessary directories
mkdir -p "$HOME/.config"

# 4. Example: Set up a custom prompt or alias file
if [ -f "$(pwd)/.aliases" ]; then
    ln -sf "$(pwd)/.aliases" "$HOME/.aliases"
    echo "source $HOME/.aliases" >> "$HOME/.bashrc"
fi

echo "✅ Dotfiles installation complete!"
