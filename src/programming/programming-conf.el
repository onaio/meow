;;; programming-conf --- generic programming configs
;;; Commentary:
;;; Code:

(require 'aggressive-indent)
(require 'whitespace)

;; whitespace
(setq-default indent-tabs-mode nil)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
(setq tab-width 2)

;; toggle test
(setq tgt-open-in-new-window 'nil)

;;; Hooks

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-pos-tip-mode))
(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;; delete trailing whitepace in source code
(add-hook 'prog-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

;; for most programming languages
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'smartparens-strict-mode)
(add-hook 'prog-mode-hook #'paren-activate)

;; lisps
(add-hook 'lisp-mode-hook #'aggressive-indent-mode)

;; css and sass
(require 'flymake-sass)
(add-hook 'sass-mode-hook 'flymake-sass-load)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))

(provide 'programming-conf)
