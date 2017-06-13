" uses ag(the_silver_searcher)
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
