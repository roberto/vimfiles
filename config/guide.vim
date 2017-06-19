" Space as leader
let mapleader = " "
let g:mapleader = " "

" turn off key mappings
let g:gitgutter_map_keys = 0

" Define prefix dictionary
let g:lmap =  {}

" main menu
let g:lmap.f = { 'name' : 'File Menu' }

  nmap <silent> <leader>fd :e $MYVIMRC<CR>
  let g:lmap.f.d = ['e $MYVIMRC', 'Open vimrc']

  nmap <silent> <leader>ft :Explore<CR>
  let g:lmap.f.t = ['Vexplore', 'Open File Tree View']

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
