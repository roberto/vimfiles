local mapkey = require("util.keymapper").mapkey
local keymap = vim.keymap

-- Directory Navigation

mapkey("<leader>ee", ":NvimTreeToggle<CR>", {desc = "Toggle Explorer"})

-- Indenting

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
