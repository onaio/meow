# meow

**Lightweigt, beginner friendly emacs config for Haskell and Clojure.**

*Inspired by Spacemacs and Emacs Live.*

Why meow?

 - Easy project management.
 - Easy on the eyes (solarize dark all the things).
 - Lightweight
 - Beginner friendly
 - Easy auto completion
 - Spell checking for Markdown. I can't think of any other place we'd want this.
 - Doesn't allow tabs; auto converts them to spaces to play well with whitespace mode.
 - Deletes unnecessary whitespace and newlines at the end of the file on save.
 - Highlights code that is beyond 80 characters.


## Usage
Move your `~/.emacs.d` or rename it to something else e.g ~/.emacs.d.old

clone this repo wherever you wish and `ls -s <path/to/meow> ~/.emacs.d`

or

`git clone git@github.com:onaio/meow.git ~/.emacs.d`

Run emacs the way you normally would.
Take a cup of coffee as it installs the necessary packages (first time only).

## Key bindings
meow has many key bindings but will list these for now.


| keyboard shortcut   | Description                                                         |
| --------------------|:-------------------------------------------------------------------:|
|`f7`                 | Specify project                                                     |
|`f8`                 | Toggle neotree                                                      |
|`C-c p p`            | Switch project                                                      |
|`C-x f`              | Find a file in the current project                                  |
|`C-x F`              | Find a file in the all the projects                                 |
|`C-c p l`            | List of all files in a directory (that's not necessarily a project) |
|`C-c p t`            | Jump to test file                                                   |
|`M-.`                | Jump to definition                                                  |
|`C-x r`              | Replace word with number suggestion above (during spellchecking)    |
|`C-c p s g`          | Grep the files in the project.                                      |
|`Del` or `Backspace` | will often delete all unnecessary whitespace backwards              |
|`Shift + arrow-key`  | Move to frame                                                       |
|`C-c j`              | jump to a word (will prompt you for the first and maybe second char)|
|`C-!`                | open shell (eshell buffer below)                                    |
|`C-x G`              | git status via magit                                                |
|`s`                  | to stage files                                                      |
|`C-x v C-h`          | magit help                                                          |
|`C-x v =`            | View diff on the current buffer                                     |
|`c c`                | Commit (type the message then C-c C-c to actually commit)           |
|`b b`                | Switch to another branch                                            |
|`P u`                | Git push                                                            |
|`F u`                | Git pull                                                            |



## Supported languages
Should work well out of the box for:
- Clojure
- JavaScript
- Haskell
- Markdown

## License
MIT
See LICESE file.
