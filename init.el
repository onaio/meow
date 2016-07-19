;;; emacs-init-file -- Init file by Njagi Mwaniki
;; License: GPL version 3

  
;;; Commentary:
;; This init file has been spread out over several files to get rid of clutter.
;; It also makes it easier for one to replicate certain features without woorrying about cross dependencies.
;; Each file can stand on it's own.


;;; Code:
;; Individual init files are in ~/.emacs.d/init-files
(let ((default-directory  "~/.emacs.d/config/"))
  (normal-top-level-add-to-load-path
   '("base"
     "erc"
     "git"
     "mode-line"
     "clojure"
     "eshell"
     "markdown"
     "haskell"
     "bindings")))

(load-file "~/.emacs.d/auto-install-packages.el")
(require 'erc-conf)
(require 'eshell-conf)
(require 'haskell-conf)
(require 'mode-line)
(require 'clojure-conf)
(require 'git-conf)
(require 'markdown-conf)
(require 'bindings-conf)
(require 'base)


;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(frame-background-mode (quote dark))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-tags-on-save t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
