# meow

**A lightweigt, beginner friendly emacs config mainly for Haskell and Clojure inspired by [Spacemacs] and [Emacs Live].**

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

  1. Rename your `~/.emacs.d` to something else
  2. Clone this repo wherever you wish and use it as your emacs cofig file.

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

  3. Start/restart emacs
  4. Wait for it to install the necessary packages (first time only).


## Supported languages
Should work well out of the box for:
- Clojure
- Haskell
- JavaScript
- Markdown
- Yaml
- Python (still buggy)


## Documentation
The project page is still a work in progress [https://onaio.github.io/meow]


## License
MIT  
See [LICENSE] file.


[Spacemacs]: https://github.com/syl20bnr/spacemacs
[Emacs Live]: https://github.com/overtone/emacs-live
[LICENSE]: https://github.com/onaio/meow/blob/master/LICENSE
[https://onaio.github.io/meow]: https://onaio.github.io/meow
