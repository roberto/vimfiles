# Installing

## NeoVim and its providers

```sh
brew install neovim/neovim/neovim python python3
pip install nevovim
pip3 install nevovim
gem install nevovim
```

For more: https://github.com/neovim/neovim/wiki/Installing-Neovim#macos--os-x

## vim-plug

```sh
url -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Checking setup

`:CheckHealth`

# Don't forget it

## Searching

* `noh` - Cancelling last search hightlighting: `:noh`
* `set nohlsearch` - turn off search highlighting
* `set hlsearch!` - toggle search highlighting
