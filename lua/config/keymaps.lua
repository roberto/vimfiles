-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- disable increment to avoid conflict with tmux prefix
vim.keymap.set("n", "<C-a>", "<Nop>")
