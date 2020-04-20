# Navigation

| Command		| Description 				| Note 			|
|-----------------------|---------------------------------------|-----------------------|
| `\<Enter\>`		|open the linked help section		| Only on links		|
| `K`	 		|find documentation			|			|

# Editing

| Command		| Description 				| Note 			|
|-----------------------|---------------------------------------|-----------------------|
| `d2w` 		| delete 2 words			|			|
| `daw` 		| delete around word			|			|

# vim-surround

| Command		| Description 						| Note 			|
|-----------------------|-------------------------------------------------------|-----------------------|
| `ysiw(`		| insert (  ) 'surrounding' word			| ( word ) 		|
| `ysiw)`		| insert () 'surrounding' word				| (word) 		|
| `ys$)`		| insert () 'surrounding' until EOL			| (word) 		|
| `cs])`		| change surround ] with )				|			|
| `ds)`			| delete surround )					|			|
| `ysiw<C-f>print<cr>`	| insert `print` as function around word, lisp style 	| (print word)		|
| `ysiwFprint<cr>`	| insert `print` as function around word		| print( word )		|
| `:help surround`	| opens the help					| 			|

# comment

| Command		| Description 				| Note 					|
|-----------------------|---------------------------------------|---------------------------------------|
| `gcc`			| comment current line			|					|
| `[Visual]gc`		| comment selection			|					|

# sexp

| Command		| Description 				| Note 					|
|-----------------------|---------------------------------------|---------------------------------------|
| `<f`			| move a form to left			|
| `>e`			| move an element to right		|
| `<(`			| move 'parenthesis' to left		|

# iced

| Command		| Description 				| Note 					|
|-----------------------|---------------------------------------|---------------------------------------|
| `<leader>eb`		| require current buffer 		| it works like a reload		|
| `<leader>ee`		| evaluate outer list			| mainly used
| `<leader>et`		| evaluate outer top list		|
| `<leader>ei`		| evaluate inner list			|
| `<leader>eq`		| interrupt code evaluation		|
| `<leader>ref`		| extract current form as a function 	|



