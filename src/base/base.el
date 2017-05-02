;;; base --- base config file for meow
;;; Commentary:
;;; Code:

(require 'org)

; comment out to stop emacs from  starting in full screen.
(toggle-frame-fullscreen)

;; tramp timeout
;; Increase tramp timeout from 5 seconds to 300 seconds
(setq password-cache-expiry 300)

;; company mode
(global-company-mode)

;; Accept y/n instead of explicit yes no
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
(setq initial-scratch-message "")

(windmove-default-keybindings)

(custom-set-variables
 '(with-editor-emacsclient-executable "/usr/local/bin/emacsclient"))

;; org mode
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; To do: make these query the env they're running in.
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

; set font size
; (set-face-attribute 'default nil :height 300)

;; org mode
(custom-set-variables
 '(org-directory "~/src/generic/org")
 '(org-agenda-files (list org-directory)))

(setq org-log-done t)

(provide 'base)
;;; base.el ends here
