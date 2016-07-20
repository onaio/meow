;;; git-conf --- git config for meow

;;; Commentary:

;;; Code:
;; to set exec-path
(exec-path-from-shell-initialize)

(add-hook 'magit-popup-mode #'flyspell-mode)

(provide 'git-conf)
;;; git-conf.el ends here
