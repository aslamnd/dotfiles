# Dotfiles

My personal dotfiles for macOS.

## What's Included

- **ZSH** - Shell configuration with aliases
- **Starship** - Minimal, fast prompt
- **Atuin** - Magical shell history
- **Ghostty** - Terminal configuration (Catppuccin Macchiato theme)
- **Git** - Git configuration and aliases
- **Neovim** - Editor

## Installation

```bash
git clone git@github.com:aslamnd/dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```

This will:
1. Install Homebrew (if needed)
2. Install all packages from Brewfile
3. Create symlinks for all config files

## Structure

```
~/.dotfiles/
├── install.sh          # Setup script
├── Brewfile            # Homebrew packages
├── zsh/zshrc           # → ~/.zshrc
├── git/gitconfig       # → ~/.gitconfig
├── atuin/config.toml   # → ~/.config/atuin/config.toml
├── ghostty/config      # → ~/.config/ghostty/config
└── starship/starship.toml # → ~/.config/starship.toml
```

## Packages Installed

### Shell & Terminal
- zsh, atuin, zsh-autosuggestions, starship
- ghostty

### Editor
- neovim

### Dev Tools
- git, ripgrep, fd, bat, fzf, eza
