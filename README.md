# Dotfiles

My personal dotfiles for macOS.

## What's Included

- **ZSH** - Shell configuration with aliases
- **Starship** - Minimal, fast prompt
- **Atuin** - Magical shell history
- **WezTerm** - Terminal configuration (Catppuccin Macchiato theme)
- **Ghostty** - Alternative terminal configuration (Catppuccin Macchiato theme)
- **Git** - Git configuration and aliases
- **Neovim** - Editor with LazyVim-based config (dashboard, LSP, file explorer, etc.)

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
├── wezterm/wezterm.lua # → ~/.config/wezterm/wezterm.lua
├── ghostty/config      # → ~/.config/ghostty/config
├── starship/starship.toml # → ~/.config/starship.toml
└── nvim/               # → ~/.config/nvim
```

## Packages Installed

### Shell & Terminal
- zsh, atuin, zsh-autosuggestions, starship
- wezterm, ghostty

### Editor
- neovim

### Dev Tools
- git, ripgrep, fd, bat, fzf, eza, fnm, zoxide

## Cheatsheet

### Keybindings

| Key | Action |
|-----|--------|
| `Ctrl+Space` | Accept autosuggestion |
| `Esc` | Enter vim normal mode (zsh-vi-mode) |
| `Ctrl+R` | Search command history (Atuin) |

### Vim Mode (zsh-vi-mode)

Press `Esc` to enter normal mode, then use vim motions:

| Key | Action |
|-----|--------|
| `w` / `b` | Move forward/backward by word |
| `0` / `$` | Move to start/end of line |
| `x` | Delete character |
| `dd` | Delete entire line |
| `cw` | Change word |
| `i` / `a` | Insert mode before/after cursor |
| `I` / `A` | Insert at start/end of line |

### Aliases - eza (ls replacement)

| Alias | Command | Description |
|-------|---------|-------------|
| `l` | `eza --icons` | List files with icons |
| `ll` | `eza -la --icons` | Long list with icons |
| `la` | `eza -la --icons` | Long list with icons |
| `lt` | `eza --tree --icons` | Tree view |
| `lg` | `eza -la --git --icons` | Long list with git status |
| `a` | `eza -la --icons --sort=modified` | List sorted by modified time |

### Aliases - Navigation

| Alias | Command | Description |
|-------|---------|-------------|
| `z <query>` | zoxide jump | Jump to directory matching query |
| `zi` | zoxide interactive | Interactive directory picker |
| `cdd` | `cd ~/.dotfiles` | Go to dotfiles |

### Aliases - General

| Alias | Command | Description |
|-------|---------|-------------|
| `c` | `clear` | Clear screen |
| `e` | `nvim` | Open Neovim |

### Aliases - Git

| Alias | Command | Description |
|-------|---------|-------------|
| `g` | `git` | Git shorthand |
| `gi` | `git init .` | Initialize repo |
| `ga` | `git add` | Stage files |
| `gc` | `git commit` | Commit |
| `gca` | `git commit -a` | Commit all tracked |
| `gco` | `git checkout` | Checkout |
| `gb` | `git branch` | List branches |
| `gs` | `git status` | Status |
| `gd` | `git diff` | Show diff |
| `gl` | `git log` | Show log |
| `g1` | `git log --oneline` | Compact log |
| `gpl` | `git pull` | Pull |
| `gph` | `git push` | Push |

### WezTerm Terminal

| Key | Action |
|-----|--------|
| `Cmd+D` | Split pane horizontal |
| `Cmd+Shift+D` | Split pane vertical |
| `Cmd+W` | Close current pane |
| `Cmd+K` | Clear screen |

### Ghostty Terminal

| Key | Action |
|-----|--------|
| `Ctrl+D` | Split pane right |
| `Ctrl+Alt+T` | Toggle quick terminal (global) |
| `Shift+Enter` | Insert newline |
| `Cmd+K` | Clear screen |

## TODO

- [ ] Remove Ghostty config once fully migrated to WezTerm
