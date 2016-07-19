;;; markdown-conf --- markdown configs


;;; Commentary:


;;; Code:
(require 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "gfm-mode"
  "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; ispell
(defvar ispell-program-name)
(setq ispell-program-name "/usr/local/bin/ispell")
(require 'flyspell)

(add-hook 'markdown-mode-hook #'flyspell-mode)
(add-hook 'gfm-mode-hook #'flyspell-mode)

(provide 'markdown-conf)
;;; markdown-conf.el ends here
