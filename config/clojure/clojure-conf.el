;;; clojure-conf --- clojure config for meow


;;; Commentary:

;; By Lisp conf I mainly mean clojure conf since
;; Clojure is a Lisp but these are useful for
;; other lisps as well

;;; Code:

(require 'clj-refactor)
(require 'projectile)
(require 'aggressive-indent)
;; TO DO: fix tags somehow
;;https://github.com/snewman/lein-gentags
(setq tags-revert-without-query 1)

(defun clj-refactor-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

;; make this use projectile
;; and make it a hook
(defun auto-test-discovery ()
  (add-to-list tgt-projects '((:root-dir "")
                              (:src-dirs "src")
                              (:test-dirs "test")
                              (:test-suffixes "_test"))))

;; flycheck
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-clojure-setup))

;; Clojure mode hooks
(add-hook 'clojure-mode-hook #'subword-mode)
(add-hook 'clojure-mode-hook #'clj-refactor-clojure-mode-hook)
(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)




(provide 'clojure-conf)
;;; clojure-conf ends here
