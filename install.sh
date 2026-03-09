#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NVIM_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

echo "Installing nvim config from $REPO_DIR"

# Back up existing config if it's not already a symlink to this repo
if [ -e "$NVIM_CONFIG_DIR" ] && [ ! -L "$NVIM_CONFIG_DIR" ]; then
  BACKUP="$NVIM_CONFIG_DIR.bak.$(date +%Y%m%d_%H%M%S)"
  echo "Backing up existing config to $BACKUP"
  mv "$NVIM_CONFIG_DIR" "$BACKUP"
elif [ -L "$NVIM_CONFIG_DIR" ]; then
  echo "Removing existing symlink at $NVIM_CONFIG_DIR"
  rm "$NVIM_CONFIG_DIR"
fi

ln -s "$REPO_DIR" "$NVIM_CONFIG_DIR"
echo "Linked $NVIM_CONFIG_DIR -> $REPO_DIR"
echo "Done. Launch nvim to let LazyVim install plugins."
