;;; emacs-init-file -- Init file by Njagi Mwaniki

;;; Commentary:
;; This init file has been spread out over several files to get rid of clutter.
;; It also makes it easier for one to replicate certain features without
;; woorrying about cross dependencies.
;; Each file can stand on it's own.


;;; Code:
(package-initialize)

(let ((default-directory  "~/.emacs.d/src/"))
  (normal-top-level-add-to-load-path
   '("base"
     "erc"
     "git"
     "project"
     "mode-line"
     "javascript"
     "clojure"
     "eshell"
     "markdown"
     "haskell"
     "programming"
     "bindings")))

(load-file "~/.emacs.d/auto-install-packages.el")
(require 'erc-conf)
(require 'eshell-conf)
(require 'base)
(require 'programming-conf)
(require 'haskell-conf)
(require 'js-conf)
(require 'mode-line)
(require 'proj-conf)
(require 'clojure-conf)
(require 'git-conf)
(require 'markdown-conf)
(require 'bindings-conf)



;;; init.el ends here
