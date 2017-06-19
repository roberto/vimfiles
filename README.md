# Installing

## Cloning repo

`git clone git@github.com:roberto/vimfiles.git ~/.config/nvim`

## NeoVim and its providers

```sh
brew install neovim/neovim/neovim python python3
pip install nevovim
pip3 install nevovim
gem install nevovim
```

For more: https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x

## Plugins Manager: vim-plug

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`:PluginInstall`

## Plugin Dependencies

* `brew install the_silver_searcher` - used by fzf and ack.vim
* `brew install ripgrep` - used by fzf and ack.vim

## Checking setup

`:CheckHealth`
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

## Finding works

* `:Find something`
* `:FindAll something`
  * same commands used after 'ctrl-p'

* `:Ack something` - search for something

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

* `:lopen` or `:copen` - list errors

## EditorConfig

* `file -I [file, dir or *]` - charset of a file
* https://github.com/jedmao/eclint - generates .editorconfig

##  Distraction Free Mode

* `:Goyo` - toggle it

## Spell

* `z=` - list suggestions
* `zg` - add word
* `zw` - mark word as incorrect

# TODO

* setup denite with important tasks
    * browse errors, searching files/words, format things
* markdown
