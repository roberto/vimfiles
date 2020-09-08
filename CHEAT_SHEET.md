# vim-surround

| Command                 | Description                                        | Note                    |
| ----------------------- | ---------------------------------------            | ----------------------- |
| `ysiw(`                 | insert (	) 'surrounding' word                     | ( word )                |
| `ysiw)`                 | insert () 'surrounding' word                       | (word)                  |
| `ys$)`                  | insert () 'surrounding' until EOL                  | (word)                  |
| `cs])`                  | change surround ] with )                           |                         |
| `ds)`                   | delete surround )                                  |                         |
| `ysiw<C-f>print<cr>`    | insert `print` as function around word, lisp style | (print word)            |
| `ysiwFprint<cr>`        | insert `print` as function around word             | print( word )           |
| `:help surround`        | opens the help                                     |                         |

# comment

| Command                 | Description                             | Note                    |
| ----------------------- | --------------------------------------- | ----------------------- |
| `gcc`                   | comment current line                    |                         |
| `[Visual]gc`            | comment selection                       |                         |

# sexp

| Command                 | Description                             | Note                    |
| ----------------------- | --------------------------------------- | ----------------------- |
| `<f`                    | move a form to left                     |
| `>e`                    | move an element to right                |
| `<(`                    | move 'parenthesis' to left              |

# Files

| Command                 | Description                             | Note                    |
| ----------------------- | --------------------------------------- | ----------------------- |
| `:saveas %:h/newfile`   | save as `newfile`                       | it works like a reload  |
| `:e %:h/otherfile`        | open `otherfile` in the folder        | it works like a reload  |

