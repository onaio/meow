;;; bindings-conf --- key bindings for meow

;;; Commentary:

;;; Code:

(require 'haskell-interactive-mode)

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
(global-set-key [f6] 'neotree-dir)
(global-set-key [f7] 'neotree-project-dir)
(global-set-key [f8] 'neotree-toggle)
;;When running ‘projectile-switch-project’
;; C-c p p ‘neotree’ will change root automatically.
;; If you use the find-file-in-project (ffip) library,
;; you can open NeoTree at your directory root by adding this code to your .emacs.d:
(global-set-key (kbd "C-c C-p") 'neotree-project-dir)


;; Find file in project
(global-set-key (kbd "C-x f") 'find-file-in-project)


;; avy
(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-w") 'ace-window)

;; don't use vanilla emacs find file.
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; clojure(script)
;; tests; given you comply with https://github.com/rags/toggle-test#configuring
(global-set-key (kbd "C-c t") 'tgt-toggle)

;; spelling
(global-set-key (kbd "C-x r") 'ispell-word)

;; haskell
;; Key bindings from the wiki
(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

;; Focus on imports block in source file
(define-key haskell-mode-map [f12] 'haskell-navigate-imports)

(define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def-or-tag)

; The below commands pretty much match the ones above, but are handy to have in cabal-mode, too:
(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)


;; git
(global-set-key (kbd "C-x G") 'magit-status)



(provide 'bindings-conf)
;;; bindings-conf.el ends here
