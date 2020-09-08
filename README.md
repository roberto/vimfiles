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

* `brew install --HEAD universal-ctags/universal-ctags/universal-ctags` \
   https://github.com/universal-ctags/homebrew-universal-ctags

## Checking setup

`:checkhealth`
`:PlugStatus`

# Commands and key bindings

## Errors

* `:lopen` - list errors
* `:copen` - list errors (only if there is one)
* `:lclose` or `:cclose` - close errors list

## EditorConfig

* `file -I [file, dir or *]` - charset of a file
* https://github.com/jedmao/eclint - generates .editorconfig

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
