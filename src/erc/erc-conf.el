;;; my-erc --- My setup for irc using emacs.

;;; Commentary:
;; Personal setup for erc.

;;; Code:
;; erc config
(require 'erc)
(setq erc-nick "<nick>")
(setq erc-password "<password>")

;; Beep
(add-hook
 'erc-insert-post-hook
 (lambda () (goto-char (point-min))
   (when (re-search-forward
	  (regexp-quote  (erc-current-nick)) nil t) (ding))))


(provide 'erc-conf)
;;; erc-conf ends here
