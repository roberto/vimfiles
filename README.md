## Download

git clone git@github.com:roberto/vimfiles.git ~/.vim

## Setup

```
./setup.sh
```

[Fonts](https://github.com/Lokaltog/powerline-fonts)

## Updating plugins

```
git submodule foreach --recursive git pull origin master
git add .
```

## Help

### Spell Check

* `set spell` - turn on
* `set nospell` - turn off
* `zg` - adds word
* `z=` - suggestions
