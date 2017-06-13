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

## Checking setup

`:CheckHealth`
`:PlugStatus`

# Don't forget it

## Searching

* `noh` - cancel last search hightlighting: `:noh`
* `set nohlsearch` - turn off search highlighting
* `set hlsearch!` - toggle search highlighting

## Finding Files

* 'ctrl-p' - opens file finder
  * 'ctrl-t' - tab split 
  * 'ctrl-x' - split
  * 'ctrl-v' - vsplit
  * 'ctrl-p' - previous searching
  * 'ctrl-n' - next searching

## Errors

* `:lopen` or `:copen` - list errors
