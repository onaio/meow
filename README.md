# meow
----

**Lightweigt, beginner friendly emacs config for Haskell and Clojure.**

Why meow?

 - easy on the eyes
 - lightweight
 - fast as a consequence of being lightweight.
 - beginner friendly.
 - easy project managment


## Usage
Move your `~/.emacs.d` or rename it to something else e.g ~/.emacs.d.old

clone this repo wherever you wish and `ls -s <path/to/meow> ~/.emacs.d`

or

`git clone git@github.com:onaio/meow.git ~/.emacs.d`

Run emacs the way you normally would.
Take a cup of coffee as it installs the necessary packages (first time only).

## Key bindings
meow has many key bindings but will list these for now.


| keyboard shortcut    | Description                                                         |
| ---------------------|:-------------------------------------------------------------------:|
| `f6`                 | Specify project directory e.g `~/src/clojure/major-work-project/`   |
| `f7`                 | Set current project as the project directory                        |
| `f8`                 | Toggle neotree                                                      |
|`C-x f`               | Find a file in the current project                                  |
| `C-c t`              | Jump to test file                                                   |
| `M-.`                | Jump to definition                                                  |
|`C-x r`               | Replace word with number suggestion above (during spellchecking)    |
| `Del` or `Backspace` | will often delete all unnecessary whitespace backwards              |
|`C-c j`               | jump to a word (will prompt you for the first and maybe second char)|
|`C-!`                 | open shell (eshell buffer below)                                    |
|`C-x G`               | git status via magit                                                |
|`s`                   | to stage files                                                      |
|`c c`                 | to commit (type the message then C-c C-c to actually commit)        |
|`b b`                 | to switch to another bra                                            |
|`P u`                 | to do a git push                                                    |
|`F u`                 | to do a git pull                                                    |

## Supported languages
Should work well out of the box for:
- Clojure
- Haskell
- Markdown

## License
MIT
See LICESE file.
