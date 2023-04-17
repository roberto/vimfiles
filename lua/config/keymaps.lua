-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- copy file name/path shortcuts

vim.keymap.set("n", "<leader>fcf", '<cmd>let @+ = expand("%:p")<cr>', { desc = "Copy full file path" })
vim.keymap.set("n", "<leader>fcr", '<cmd>let @+ = expand("%")<cr>', { desc = "Copy relative file path" })
vim.keymap.set("n", "<leader>fcn", '<cmd>let @+ = expand("%:t")<cr>', { desc = "Copy file name" })

-- disable increment to avoid conflict with tmux prefix
vim.keymap.set("n", "<C-a>", "<Nop>")
