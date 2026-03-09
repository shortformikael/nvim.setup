# nvim.setup

Personal Neovim config based on [LazyVim](https://www.lazyvim.org/).

## Requirements

- Neovim >= 0.9
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

## Install

```bash
git clone <repo-url> ~/repos/nvim.setup
~/repos/nvim.setup/install.sh
```

The script symlinks `~/.config/nvim` to this repo, so any edits made inside Neovim are automatically reflected here.

Open Neovim — LazyVim will bootstrap itself and install all plugins automatically.

## Structure

```
.
├── init.lua              # Entry point
├── lazyvim.json          # Enabled LazyVim extras
├── lazy-lock.json        # Pinned plugin versions
├── stylua.toml           # Lua formatter config
├── install.sh            # Setup script
└── lua/
    ├── config/
    │   ├── autocmds.lua  # Custom autocommands
    │   ├── keymaps.lua   # Custom keymaps
    │   ├── lazy.lua      # lazy.nvim bootstrap & setup
    │   └── options.lua   # Vim options
    └── plugins/          # Plugin specs (one file per plugin or group)
```

## Updating this repo

Since `~/.config/nvim` is a symlink to this repo, all changes made in Neovim are already here. Just commit them:

```bash
cd ~/repos/nvim.setup
git add -p
git commit -m "..."
git push
```

### Common things to commit

| What changed | File(s) |
|---|---|
| New or modified plugin | `lua/plugins/*.lua` |
| LazyVim extras toggled | `lazyvim.json` |
| Plugins updated | `lazy-lock.json` |
| Options or keymaps | `lua/config/options.lua`, `lua/config/keymaps.lua` |

## Syncing on another machine

```bash
cd ~/repos/nvim.setup
git pull
nvim --headless "+Lazy restore" +qa  # install exact pinned versions
```
