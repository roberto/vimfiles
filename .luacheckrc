---@diagnostic disable: lowercase-global
-- luacheck: globals read_globals, ignore

ignore = {
  "122", -- setting read-only field of global variable 'vim'
}

read_globals = {
  "vim",
}
