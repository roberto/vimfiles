" Space as leader
let mapleader = " "
let g:mapleader = " "

" time waiting command to complete
" in this case to open menu after leader has been pressed
set timeoutlen=400

" turn off key mappings
"let g:gitgutter_map_keys = 0

" let g:leaderGuide_run_map_on_popup = 0

" Define prefix dictionary
let g:lmap =  {}

" main menu
let g:lmap.f = { 'name' : 'File Menu' }

  nmap <silent> <leader>fd :e $MYVIMRC<CR>
  let g:lmap.f.d = ['e $MYVIMRC', 'Open vimrc']

  nmap <silent> <leader>ft :Vexplore<CR>
  let g:lmap.f.t = ['Vexplore', 'Open File Tree View']

let g:lmap.s = { 'name' : 'Spell Checker' }

  nmap <silent> <leader>sl z=
  let g:lmap.s.l = ['call feedkeys("z=","t")', 'List suggestions']

  nmap <silent> <leader>sa zg
  let g:lmap.s.a = ['call feedkeys("zg","t")', 'Adds word']

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")

" loading only options from dictionary
nnoremap <silent> <leader> :<c-u>LeaderGuideD g:lmap<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisualD g:lmap<CR>

" loading native vim mapping
" nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
" vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
