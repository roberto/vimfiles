" uses ag(the_silver_searcher)
if executable('ag')
  let g:ackprg = 'ag --ignore node_modules/ --vimgrep'
endif

" uses rg(ripgrep)
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
