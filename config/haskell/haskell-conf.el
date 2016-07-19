;;; Haskell --- Make emacs a haskell ide.

;;; Commentary:
;; Personal setup for haskell on Emacs.

;;; Code:

(require 'haskell-interactive-mode)
(require 'haskell-process) ; haskell mode
(require 'shm)

;;; haskell-mode
;; -------------

;; Stack installs binaries into ~/.local/bin so we point it there.
(let ((user-path (expand-file-name"~/.local/bin/"))) ;; I assume this is like using ~/.cabal/bin
  (setenv "PATH" (concat user-path ":" (getenv "PATH")))
  (add-to-list 'exec-path user-path))
;; Stack installs ghc, runhaskell and others here.
(let ((my-stack-path (expand-file-name"~/.stack/programs/x86_64-linux/ghc-7.10.3/bin")))
  (setenv "PATH" (concat my-stack-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-stack-path))
;; For flycheck haskell to find packages.
(let ((cabal-path (expand-file-name"~/.cabal/bin/")))
  (setenv "PATH" (concat cabal-path ":" (getenv "PATH")))
  (add-to-list 'exec-path cabal-path))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;; For module import suggestions.
(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))


;; ghci process within emacs
(custom-set-variables
  '(haskell-process-type 'cabal-repl))

;; Hasktags
;; customization variable to enable tags generation on save
(custom-set-variables
  '(haskell-tags-on-save t))

;;printing mode
(setq haskell-interactive-mode-eval-mode 'haskell-mode)



;;; structured haskell mode
;;; -----------------------

;; use indentation from structured haskell mode
(add-hook 'haskell-mode-hook 'structured-haskell-mode)
(define-key shm-map (kbd "C-c C-s") 'shm/case-split)


(provide 'haskell-conf)
;;; haskell-conf ends here
