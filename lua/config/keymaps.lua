local mapkey = require("util.keymapper").mapkey

-- Directory Navigation

mapkey("<leader>ee", ":NvimTreeToggle<CR>", {desc = "Toggle Explorer"})
