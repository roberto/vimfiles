# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration built on [LazyVim](https://lazyvim.github.io/), using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

## Common Commands

Run inside Neovim:

- `:Lazy` — open the plugin manager UI (install, update, clean plugins)
- `:Lazy sync` — sync all plugins to `lazy-lock.json`
- `:Mason` — open Mason UI to install/manage LSP servers, formatters, and linters
- `:LazyHealth` — check configuration health

Format Lua files from the terminal:

```sh
stylua lua/
```

## Architecture

### Entry Point

`init.lua` bootstraps everything by loading `lua/config/lazy.lua`, which sets up lazy.nvim and imports all plugin specs.

### Plugin Loading Order

1. `lua/config/lazy.lua` — bootstraps lazy.nvim, then loads:
   - `lazyvim.plugins` — LazyVim's built-in plugin specs
   - `plugins/` — all files under `lua/plugins/` (custom specs)
2. LazyVim auto-requires `lua/config/options.lua`, `lua/config/keymaps.lua`, and `lua/config/autocmds.lua`

### Adding Plugins / Overriding LazyVim Defaults

Create or edit any `.lua` file under `lua/plugins/`. Each file returns a table of plugin specs. To extend a LazyVim plugin, specify the same plugin name and use `opts` (merged) or override `config`. The `example.lua` file (currently disabled via `if true then return {} end`) contains patterns for common operations.

To import a LazyVim extra (e.g., language support):
```lua
{ import = "lazyvim.plugins.extras.lang.typescript" }
```

### Lua Style

Formatted with StyLua: 2-space indent, 120 column width (see `stylua.toml`).
