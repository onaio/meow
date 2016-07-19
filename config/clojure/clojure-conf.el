;;; clojure-conf --- clojure config for meow


;;; Commentary:

;; By Lisp conf I mainly mean clojure conf since
;; Clojure is a Lisp but these are useful for
;; other lisps as well

;;; Code:

(require 'flycheck-pos-tip)
(require 'projectile)

(add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'smartparens-strict-mode)
(add-hook 'ielm-mode-hook #'smartparens-strict-mode)
(add-hook 'lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'scheme-mode-hook #'smartparens-strict-mode)

(add-hook 'lisp-interaction-mode-hook #'smartparens-strict-mode)
(add-hook 'lisp-interaction-mode-hook #'aggressive-indent-mode)
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)


;; flycheck
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-clojure-setup))
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-pos-tip-mode))

(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

;; gotta find `lein`
(add-to-list 'exec-path "/usr/local/bin")

(add-to-list 'tgt-projects '((:root-dir (projectile-project-root))
                              (:src-dirs "src")
                              (:test-dirs "test")
                              (:test-suffixes "test")))


(provide 'clojure-conf)
;;; clojure-conf ends here
