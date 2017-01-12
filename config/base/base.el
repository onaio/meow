;;; base --- base config file for meow
;; License: GPL version 3


;;; Commentary:
;; Code will be added and removed from this file at will.

;;; Code:
(toggle-frame-fullscreen)

;; tramp timeout
;; Increase tramp timeout from 5 seconds to 300 seconds
(setq password-cache-expiry 300)

;; company mode
(global-company-mode)

;; to have y/n instead of explicit yes no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Don't want a scroll-bar, tool-bar or a menu-bar.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode)   (menu-bar-mode -1))


;; add htop to eshell visual commands
;; (add-to-list 'eshell-visual-commands "htop")

(load-theme 'solarized-dark t)

;; Disable the welcome message
(setq inhibit-startup-message t)
(setq initial-scratch-message "") ;; set initial scratch message. Set as blank

(windmove-default-keybindings)

(custom-set-variables
 '(with-editor-emacsclient-executable "/usr/local/bin/emacsclient"))

;; Add gems to my PATH
(let ((gem-path (expand-file-name "~/.gem/ruby/2.3.0/bin")))
  (setenv "PATH" (concat gem-path ":" (getenv "PATH")))
  (add-to-list 'exec-path gem-path))

;; Stack installs binaries into ~/.local/bin so we point it there.
(let ((user-path (expand-file-name "~/.local/bin/")))
  (setenv "PATH" (concat user-path ":" (getenv "PATH")))
  (add-to-list 'exec-path user-path))
;; Stack installs ghc, runhaskell and others here.
(let ((my-stack-path (expand-file-name "~/.stack/programs/x86_64-osx/ghc-8.0.1/bin")))
  (setenv "PATH" (concat my-stack-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-stack-path))


(provide 'base)
;;; base.el ends here
