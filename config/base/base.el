;;; base --- base config file for meow
;; License: GPL version 3


;;; Commentary:
;; Code will be added and removed from this file at will.

;;; Code:
(toggle-frame-fullscreen)

;; tramp timeout
;; Increase tramp timeout from 5 seconds to 300 seconds
(setq password-cache-expiry 300)

;; company mode
(global-company-mode)

;; to have y/n instead of explicit yes no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Don't want a scroll-bar, tool-bar or a menu-bar.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode)   (menu-bar-mode -1))


;; add htop to eshell visual commands
;; (add-to-list 'eshell-visual-commands "htop")

(load-theme 'solarized-dark t)

;; Disable the welcome message
(setq inhibit-startup-message t)
(setq initial-scratch-message "") ;; set initial scratch message. Set as blank

(windmove-default-keybindings)


(provide 'base)
;;; base.el ends here
