# Installing

`git clone git@github.com:roberto/vimfiles.git ~/.config/nvim`

I'm using Neovim, for more information:
https://github.com/neovim/neovim/wiki/Installing-Neovim

## Plugins Manager: vim-plug

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`:PluginInstall`

## External Dependencies

* `brew install --HEAD universal-ctags/universal-ctags/universal-ctags` \
   https://github.com/universal-ctags/homebrew-universal-ctags

## Checking setup

`:checkhealth`
`:PlugStatus`
