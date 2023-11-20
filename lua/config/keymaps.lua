local keymap = vim.keymap

local default_otps = { noremap = true, silent = true }
-- Directory Navigation

keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", default_opts)
