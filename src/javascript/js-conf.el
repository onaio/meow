;;; Commentary:

;;; Code:
(require 'prettier-js)

(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\|html\\)\\'" . nxml-mode)
            auto-mode-alist))

(add-hook 'nxml-mode-hook 'js-mode)

(setq js2-mode-assume-strict t)
(setq js2-bounce-indent-p t)
(setq js-indent-level 2)

;; major mode for js files
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; For shell scripts running via node.js:
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; prettier
(add-hook 'js2-mode-hook 'prettier-js-mode)


(setq prettier-js-args '(
  "--trailing-comma" "es5"
  "--bracket-spacing" "false"
  "--single-quote" "true"
  "--arrow-parens" "always"
))

(provide 'js-conf)
