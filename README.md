# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Setup

### tmux

The following must be added to `~/.tmux.conf` to enable seamless split/pane navigation and resizing with [smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim).

Add this **before** the `run '~/.tmux/plugins/tpm/tpm'` line, and remove any conflicting navigation plugin (e.g. `aserowy/tmux.nvim`):

```tmux
is_vim="ps -o state= -o comm= -t '#{pane_tty}' | grep -iqE '^[^TXZ ]+ +(\S+\/)?g?\.(view|n?vim?x?)(-wrapped)?(diff)?$'"

# smart-splits.nvim: no-prefix resize (forwards to nvim when nvim is focused)
bind-key -n M-h if-shell "$is_vim" 'send-keys M-h' 'resize-pane -L 3'
bind-key -n M-j if-shell "$is_vim" 'send-keys M-j' 'resize-pane -D 3'
bind-key -n M-k if-shell "$is_vim" 'send-keys M-k' 'resize-pane -U 3'
bind-key -n M-l if-shell "$is_vim" 'send-keys M-l' 'resize-pane -R 3'
```

Reload with `prefix + r` (or `tmux source ~/.tmux.conf`).
