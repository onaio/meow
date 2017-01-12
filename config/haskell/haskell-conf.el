;;; Haskell --- Make emacs a haskell ide.

;;; Commentary:
;; Personal setup for haskell on Emacs.

;;; Code:
(require 'haskell-interactive-mode)
(require 'haskell-mode)
(require 'company-ghci)

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(add-hook 'structured-haskell-mode-hook '(set-face-background 'shm-current-face "#344246"))
(add-hook 'structured-haskell-mode-hook '(set-face-background 'shm-quarantine-face "#073642"))

(eval-after-load 'flycheck '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(with-eval-after-load "company-ghci"
  (push 'company-ghci company-backends)
  (add-hook 'haskell-mode-hook 'company-mode)
  ;; To get completions in the REPL
  (add-hook 'haskell-interactive-mode-hook 'company-mode))

(eval-after-load 'flycheck '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))

(provide 'haskell-conf)
;;; haskell-conf ends here
