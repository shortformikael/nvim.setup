# CLAUDE.md

Context for Claude Code when working in this repo.

## What this repo is

Personal Neovim config using [LazyVim](https://www.lazyvim.org/) as the base distribution.
`~/.config/nvim` is a symlink to this repo root.

## Project structure

- `init.lua` — entry point, just bootstraps `config.lazy`
- `lazyvim.json` — enabled LazyVim extras (managed via `:LazyExtras` UI, not edited by hand)
- `lazy-lock.json` — pinned plugin commits (updated via `:Lazy update`)
- `stylua.toml` — Lua formatter: 2-space indent, 120 column width
- `lua/config/` — user overrides for autocmds, keymaps, options, and lazy setup
- `lua/plugins/` — custom plugin specs; each file returns a lazy.nvim spec table

## Conventions

- Format Lua with `stylua` (config in `stylua.toml`)
- Plugin specs go in `lua/plugins/` — one file per plugin or logical group
- Do not edit `lazyvim.json` or `lazy-lock.json` directly
- Prefer overriding LazyVim defaults via `opts` merging rather than replacing specs entirely
- `lua/plugins/example.lua` is a reference file from the LazyVim starter — keep it as-is

## Enabled LazyVim extras

See `lazyvim.json`. Currently active:
- `lazyvim.plugins.extras.ai.claudecode`
- `lazyvim.plugins.extras.lang.git`
- `lazyvim.plugins.extras.lang.go`
- `lazyvim.plugins.extras.lang.json`
- `lazyvim.plugins.extras.lang.markdown`
- `lazyvim.plugins.extras.util.dot`
