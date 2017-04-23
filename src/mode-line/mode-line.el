;;; mode-line --- mode line

;;; Commentary:

;; Incomplete

;;; Code:

(require 'battery)
;; This causes the current time in the mode line to be displayed in
;; C-h v display-time-string-forms

;; solarized dark mode line.
;; depends on the solarized-emacs package.
(setq sml/no-confirm-load-theme t)
(sml/setup)

;; time
(setq display-time-string-forms
      '((concat " " 24-hours ":" minutes " ")))
(display-time-mode 1)

;; battery
(display-battery-mode 1)
(setq battery-mode-line-format "(%p%% %t)")

(provide 'mode-line)
