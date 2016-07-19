;;; clojure-conf --- yada yada yada

;;; Commentary:

;;; Code:
(add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'smartparens-strict-mode)
(add-hook 'ielm-mode-hook #'smartparens-strict-mode)
(add-hook 'lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'scheme-mode-hook #'smartparens-strict-mode)

(add-hook 'lisp-interaction-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)




;; gotta find `lein`
(add-to-list 'exec-path "/usr/local/bin")

(provide 'clojure-conf)
;;; clojure-conf.el ends here
