" plugin system block
call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhartington/oceanic-next'

" initialize plugin system
call plug#end()

" true colors for terminal
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext
" airline
" let g:airline_theme='oceanicnext'
