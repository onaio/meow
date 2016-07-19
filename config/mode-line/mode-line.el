;;; mode-line --- mode line

;;; Commentary:

;; Incomplete

;;; Code:
(require 'powerline)
 
(column-number-mode)
(line-number-mode)
(display-time-mode)
(display-battery-mode)

(defun powerline-meow-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default
   mode-line-format
   '("%e"
     (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line-buffer-id (if active 'mode-line-buffer-id 'mode-line-buffer-id-inactive))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'powerline-active1 'powerline-inactive1))
                          (face2 (if active 'powerline-active2 'powerline-inactive2))
                          (separator-left (intern (format "powerline-%s-%s"
							  (powerline-current-separator)
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           (powerline-current-separator)
                                                           (cdr powerline-default-separator-dir))))
                          (lhs (list (when powerline-display-mule-info
                                       (powerline-raw mode-line-mule-info mode-line 'l))
				     (powerline-raw "%*" mode-line 'l)
				     (funcall separator-left face2 face1)
				     
				     (powerline-raw "%3l" face1 'r)
				     (powerline-raw ":" face1)
				     (powerline-raw "%3c" face1 'r)
				     (funcall separator-left face1 face2)
				     
				     (when powerline-display-buffer-size
                                       (powerline-buffer-size mode-line 'l))
				     (powerline-raw " ")
  				     (funcall separator-left mode-line face2)
				     
                                     (powerline-buffer-id mode-line-buffer-id 'l)
                                     (when (and (boundp 'which-func-mode) which-func-mode)
                                       (powerline-raw which-func-format nil 'l))
                                     (powerline-raw " ")
				     
                                     (funcall separator-left face2 face1)
				     
                                     (when (and (boundp 'erc-track-minor-mode) erc-track-minor-mode)
                                       (powerline-raw erc-modified-channels-object face1 'l))
                                     (powerline-major-mode face1 'l)
                                     (powerline-process face1)
                                     (powerline-minor-modes face1 'l)
                                     (powerline-narrow face1 'l)
                                     (powerline-raw " " face1)
                                     (funcall separator-left face1 face2)
                                     (powerline-vc face2 'r)
                                     (when (bound-and-true-p nyan-mode)
                                       (powerline-raw (list (nyan-create)) face2 'l))))
			  
                          (rhs (list (unless window-system
				       (powerline-raw (char-to-string #xe0a1) face1 'l))
				     (funcall separator-right face1 mode-line)
				     
				     (powerline-raw "%6p" mode-line 'l)
				     
				     (funcall separator-right face2 face1)
				     (powerline-raw global-mode-string face2 'l)
				     
                                     (when powerline-display-hud
                                       (powerline-hud face2 face1)))))
(concat (powerline-render lhs)
	(powerline-fill face2 (powerline-width rhs))
	(powerline-render rhs)))))))

(powerline-meow-theme)


(provide 'mode-line)
