#!/bin/bash
set -e

DOTFILES_DIR="$HOME/.dotfiles"

echo "Installing dotfiles..."

# Install Homebrew if needed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install packages
echo "Installing packages from Brewfile..."
brew bundle --file="$DOTFILES_DIR/Brewfile"

# Create symlinks
echo "Creating symlinks..."

# Home directory
ln -sf "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig

# .config directory
mkdir -p ~/.config/atuin
ln -sf "$DOTFILES_DIR/atuin/config.toml" ~/.config/atuin/config.toml

mkdir -p ~/.config/ghostty
ln -sf "$DOTFILES_DIR/ghostty/config" ~/.config/ghostty/config

mkdir -p ~/.config
ln -sf "$DOTFILES_DIR/starship/starship.toml" ~/.config/starship.toml

echo ""
echo "✓ Dotfiles installed successfully!"
echo ""
echo "Restart your terminal or run: source ~/.zshrc"
