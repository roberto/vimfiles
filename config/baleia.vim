" tell Conjure to not strip ANSI sequences
let g:conjure#log#strip_ansi_escape_sequences_line_limit=0

let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))
