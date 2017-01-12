;;; bindings-conf --- key bindings for meow

;;; Commentary:

;;; Code:

(require 'haskell-mode)
(require 'cider)
(require 'paredit)
(require 'projectile)

;; clipboard
(defun copy-to-clipboard ()
  "For copying to clipboard within the terminal and outside it."
  (interactive)
  (if (display-graphic-p)
      (progn
        (message "Yanked region to x-clipboard!")
        (call-interactively 'clipboard-kill-ring-save))
    (if (region-active-p)
        (progn
          (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
          (message "Yanked region to clipboard!")
          (deactivate-mark))
      (message "No region active; can't yank to clipboard!"))))

(defun paste-from-clipboard ()
  "For copying to clipboard within the terminal and outside it."
  (interactive)
  (if (display-graphic-p)
      (progn
        (clipboard-yank)
        (message "graphics active"))
    (insert (shell-command-to-string "xsel -o -b"))))

(global-set-key [f9] 'copy-to-clipboard)
(global-set-key [f10] 'paste-from-clipboard)


;; neotree
;; When running ‘projectile-switch-project’
;; `C-c p p` ‘neotree’ will change root automatically.
;; (global-set-key [f7] '(neotree-refresh projectile-project-root))
(global-set-key [f8] 'neotree-toggle)

;; Find file in project
(global-set-key (kbd "C-x f") 'projectile-find-file)
(global-set-key (kbd "C-x F") 'projectile-find-file-in-known-projects)
(global-set-key (kbd "C-c o p") 'projectile-switch-open-project)

;; avy
(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.")   'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-w")   'ace-window)

;; don't use vanilla emacs find file.
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b")   'helm-buffers-list)

;; clojure(script)
;; tests; given you comply with https://github.com/rags/toggle-test#configuring
(global-set-key (kbd "C-c t") 'tgt-toggle)

;; spelling
(global-set-key (kbd "C-x r") 'ispell-word)

;;; haskell
(define-key haskell-mode-map (kbd "C-c C-l")     'haskell-process-load-file)
(define-key haskell-mode-map (kbd "C-c C-z")     'haskell-interactive-switch)
(define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-n c")   'haskell-process-cabal)

(define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal)
(define-key haskell-cabal-mode-map (kbd "C-c c")   'haskell-process-cabal)

;; Jump to imports
(define-key haskell-mode-map [f12] 'haskell-navigate-imports)
;; hasktags
(define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def-or-tag)

; The below commands pretty much match the ones above, but are handy to have in cabal-mode, too:
(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)

;; git
(global-set-key (kbd "C-x G") 'magit-status)

;; paredit stealing
(define-key clojure-mode-map (kbd "C-c l l") 'align-cljlet)
(define-key clojure-mode-map (kbd "C-M-z")   'align-cljlet)

(define-key paredit-mode-map (kbd "C-c l k") 'paredit-splice-sexp-killing-forward)
(define-key paredit-mode-map (kbd "C-c l w") 'paredit-splice-sexp-killing-backward)
(define-key paredit-mode-map (kbd "C-c l l") 'align-cljlet)
(define-key paredit-mode-map (kbd "C-c l t") 'fill-paragraph)
(define-key paredit-mode-map (kbd "C-c l j") 'live-paredit-forward-slurp-sexp-neatly)
(define-key paredit-mode-map (kbd "C-M-e")   'paredit-backward-barf-sexp)
(define-key paredit-mode-map (kbd "C-M-s")   'paredit-backward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-M-j")   'live-paredit-forward-slurp-sexp-neatly)
(define-key paredit-mode-map (kbd "C-M-y")   'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-M-z")   'align-cljlet)
(define-key paredit-mode-map (kbd "M-S")     'paredit-split-sexp)
(define-key paredit-mode-map (kbd "M-s")     'paredit-splice-sexp)
(define-key paredit-mode-map (kbd "M-j")     'paredit-join-sexps)
(define-key paredit-mode-map (kbd "M-P")     'live-paredit-previous-top-level-form)
(define-key paredit-mode-map (kbd "M-N")     'live-paredit-next-top-level-form)
(define-key paredit-mode-map (kbd "C-M-f")   'live-paredit-forward)
(define-key paredit-mode-map (kbd "M-q")     'live-paredit-reindent-defun)
(define-key paredit-mode-map (kbd "M-d")     'live-paredit-forward-kill-sexp)
(define-key paredit-mode-map (kbd "M-k")     'live-paredit-backward-kill)
(define-key paredit-mode-map (kbd "M-\\")    'live-paredit-delete-horizontal-space)
(define-key paredit-mode-map (kbd "C-M-i")   'paredit-forward-down)
(define-key paredit-mode-map (kbd "C-M-n")   'paredit-forward-up)
(define-key paredit-mode-map (kbd "C-M-p")   'paredit-backward-down)
(define-key paredit-mode-map (kbd "C-M-u")   'paredit-backward-up)
(define-key paredit-mode-map (kbd "M-T")     'transpose-sexps)
(define-key paredit-mode-map (kbd "C-M-k")   'live-paredit-copy-sexp-at-point)


(provide 'bindings-conf)
;;; bindings-conf.el ends here
