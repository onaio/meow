;;; programming-conf ---
;;; Commentary
;;; Code:

(require 'aggressive-indent)
(require 'whitespace)

;; whitespace matters.
(setq-default indent-tabs-mode nil)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
(add-hook 'before-save-hook #'delete-trailing-whitespace)

;; toggle test
(setq tgt-open-in-new-window 'nil)


;; Hooks
;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-pos-tip-mode))
(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))


;; for most programming languages
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'smartparens-strict-mode)
(add-hook 'prog-mode-hook #'aggressive-indent-mode)
(add-hook 'prog-mode-hook #'paren-activate)


(add-to-list 'aggressive-indent-excluded-modes 'html-mode)


(provide 'programming-conf)
