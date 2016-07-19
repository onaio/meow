;;; my-eshell --- My eshell setup

;;; Commentary:
;; Personal setup for eshell.

;;; Code:
;; eshell
(require 'eshell)
(defun eshell-here ()
  "Opens up a new shell in the directory associated with the current buffer.
  The shell is renamed to match that directory to make multiple eshell windows easier."
  (interactive)
  (let* ((parent (if (buffer-file-name)
                     (file-name-directory (buffer-file-name))
                   default-directory))
         (height (/ (window-total-height) 3))
         (name   (car (last (split-string parent "/" t)))))
    (split-window-vertically (- height))
    (other-window 1)
    (eshell "new")
    (rename-buffer (concat "*eshell: " name "*"))
 
    (insert (concat "ls"))
    (eshell-send-input)))
 
(global-set-key (kbd "C-!") 'eshell-here)
 
(defun eshell/!x ()
  "Close eshell."
  (insert "exit")
  (eshell-send-input)
  (delete-window))


(defun eshell/clear ()
  "Clears the shell buffer ala Unix's clear or DOS' cls."
  (interactive)
  ;; the shell prompts are read-only, so clear that for the duration
  (let ((inhibit-read-only t))
	;; simply delete the region
  (eshell-send-input)
	(delete-region (point-min) (point-max))))

(provide 'eshell-conf)

;;; my-eshell ends here
