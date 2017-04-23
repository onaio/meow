# meow

**A lightweigt, beginner friendly emacs config mainly for Haskell and Clojure.**

*Inspired by [Spacemacs] and [Emacs Live].*

## Why meow?

 - Easy project management
 - Easy on the eyes (solarized dark)
 - Lightweight
 - Beginner friendly
 - Easy auto completion
 - Spell checking for Markdown (I can't think of any other place we'd want this).
 - Auto converts tabs to spaces
 - Auto-deletes trailing whitespace and blank lines at the start and end of source files on save.
 - Highlights code that is beyond 80 characters.
 - Uses the latest packages, you don't have to depend on "frozen" dependencies.

## Installation
Rename your `~/.emacs.d` to something else  
Clone this repo wherever you wish and use it as your emacs cofig file.

**Cloning into ~/emacs.d**
``` bash
if [ -d "~/.emacs.d" ]; then
  mv ~/.emacs.d ~/.emacs.d.old
fi

git clone git@github.com:onaio/meow.git ~/.emacs.d
```

**Using a symlink**
```bash
if [ -d "~/.emacs.d" ]; then
  mv ~/.emacs.d ~/.emacs.d.old
fi

ln -s <path/to/meow> ~/.emacs.d

```

Start/restart emacs  
Wait for it to install the necessary packages (first time only).

## Documentation
The project page is still a work in progress [https://onaio.github.io/meow]

## Key bindings
meow has many key bindings but will list these for now.

| keyboard shortcut   | Description                                                         |
| --------------------|:-------------------------------------------------------------------:|
|`f8`                 | Toggle neotree buffer                                               |
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
- Haskell
- JavaScript
- Markdown
- Yaml
- Python (still buggy)

## License
MIT
See [LICENSE] file.


[Spacemacs]: https://github.com/syl20bnr/spacemacs
[Emacs Live]: https://github.com/overtone/emacs-live
[LICENSE]: https://github.com/onaio/meow/blob/master/LICENSE
[https://onaio.github.io/meow]: https://onaio.github.io/meow
