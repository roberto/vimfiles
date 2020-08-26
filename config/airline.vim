" tabs
let g:airline#extensions#tabline#enabled = 1

" theme
let g:airline_theme='papercolor'

" 'icons' everywhere
let g:airline_powerline_fonts = 1

" hide built-in show mode
set noshowmode

" tab with just the file name
let g:airline#extensions#tabline#formatter = 'short_path'

" last section with just swap, line and column
function! AirlineInit()
  let spc = g:airline_symbols.space
  let g:airline_section_z = airline#section#create(['windowswap', 'linenr', ':%v'])
endfunction
autocmd VimEnter * call AirlineInit()
