" Add custom menus
let s:menus = {}

let s:menus.find_stuff = {
  \ 'description': 'Find stuff'
\ }

let s:menus.find_stuff.command_candidates = [
  \ ['Find files', ':FZF'],
  \ ['Search words', ':Find']
\ ]

let s:menus.errors = {
  \ 'description': 'Errors'
\ }

let s:menus.errors.command_candidates = [
  \ ['List errors', ':lopen']
\ ]

call denite#custom#var('menu', 'menus', s:menus)

nnoremap <silent> <Space> :Denite menu<cr>
