# Installing

## Cloning repo

`git clone git@github.com:roberto/vimfiles.git ~/.config/nvim`

## Neovim

```sh
brew install neovim
# or
apt install neovim
```

For more: https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x

### Neovim providers

```sh
pip install nevovim
pip3 install nevovim
gem install nevovim
npm install -g neovim
```

## Plugins Manager: vim-plug

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`:PluginInstall`

## External Dependencies

* `brew install the_silver_searcher` - used by fzf and ack.vim
* `brew install ripgrep` - used by fzf and ack.vim
* `brew install --HEAD universal-ctags/universal-ctags/universal-ctags` \
   https://github.com/universal-ctags/homebrew-universal-ctags

## Checking setup

`:checkhealth`
`:PlugStatus`

# Commands and key bindings

## Searching

* `noh` - cancel last search highlighting: `:noh`
* `set nohlsearch` - turn off search highlighting
* `set hlsearch!` - toggle search highlighting

## Finding Files

* 'ctrl-p' - opens file finder
  * 'ctrl-t' - tab split
  * 'ctrl-x' - split
  * 'ctrl-v' - vsplit
  * 'ctrl-p' - previous searching
  * 'ctrl-n' - next searching

## Finding words

* `:Find something`
* `:FindAll something`
  * same commands used after 'ctrl-p'

* `:Ack something` - searching for something
* `:Tags` - searching using ctags

```
?    a quick summary of these keys, repeat to close
o    to open (same as Enter)
O    to open and close the quickfix window
go   to preview file, keeping focus on the results
t    to open in new tab
T    to open in new tab, keeping focus on the results
h    to open in horizontal split
H    to open in horizontal split, keeping focus on the results
v    to open in vertical split
gv   to open in vertical split, keeping focus on the results
q    to close the quickfix window
```

## Errors

* `:lopen` - list errors
* `:copen` - list errors (only if there is one)
* `:lclose` or `:cclose` - close errors list

## EditorConfig

* `file -I [file, dir or *]` - charset of a file
* https://github.com/jedmao/eclint - generates .editorconfig

##  Distraction Free Mode

* `:Goyo` - toggle it

## Spell

* `z=` - list suggestions
* `zg` - add word
* `zw` - mark word as incorrect

## Clojure

### From tpope/vim-sexp-mappings...

#### Motion mappings

Vim-sexp uses meta mappings to move element-wise. I've taken over the WORD motions (W, B, E, gE) instead, operating under the theory that those aren't nearly as useful in a language where so many punctuation marks are identifier characters. This might be a terrible idea.

#### List manipulation mappings

More meta madness in the defaults here.
I've taken >f and <f to move a form and >e and <e to move an element.

Slurpage and barfage are handled by >), <), >(, and <(,
where the angle bracket indicates the direction,
and the parenthesis indicates which end to operate on.

#### Insertion mappings

Use <I and >I to insert at the beginning and ending of a form.

#### Mappings inspired by surround.vim

Note that surround.vim out of the box works great with the sexp.vim motions and text objects. Use ysaf), for example, to surround the current form with parentheses. To this, we add a few more mappings:

dsf: splice (delete surroundings of form)
cse(/cse)/cseb: surround element in parentheses
cse[/cse]: surround element in brackets
cse{/cse}: surround element in braces
