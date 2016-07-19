;;; base --- base config file for meow
;; License: GPL version 3

  
;;; Commentary:
;; Code will be added and removed from this file at will.

;;; Code:

(require 'auto-complete)
(require 'package)
(require 'find-file-in-project)


;; Extend elctric-pair-mode
;; make electric-pair-mode work on more brackets
(electric-pair-mode 1) ;Automatically close left parens. Emacs 24.
(defvar electric-pair-pairs)
(setq electric-pair-pairs '((?\" . ?\")
                            (?\' . ?\')
                            (?\{ . ?\})
                            (?\[ . ?\])))

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)


;; auto-complete
(global-auto-complete-mode t)


;; Find files easily
(autoload 'find-file-in-project "find-file-in-project" nil t)
(autoload 'find-file-in-project-by-selected "find-file-in-project" nil t)
(autoload 'find-directory-in-project-by-selected "find-file-in-project" nil t)
(autoload 'ffip-show-diff "find-file-in-project" nil t)
(autoload 'ffip-save-ivy-last "find-file-in-project" nil t)
(autoload 'ffip-ivy-resume "find-file-in-project" nil t)

(setq ffip-find-options  "-not -size +64k -not -iwholename '*/dist/*'")
(setq ffip-patterns '("*.cljs" "*.clj" "*.hs" "*.lhs" "*py" "*rb" "*el" "*md" "*.html" "*.css" "*.java" "*.xml" "*.js"))
(setq ffip-prune-patterns '("*/.git/*" "*/node_modules/*" "*/index.js" "*/out/*" "*/target/*"))

;; tramp timeout
; Expand tramp timeout from 5 seconds to 300 seconds
(setq password-cache-expiry 300)


;; Don't want a scroll-bar, tool-bar or a menu-bar.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode)   (menu-bar-mode -1))



;; add htop to eshell visual commands
;; (add-to-list 'eshell-visual-commands "htop")

(set-frame-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)



;; Disable the welcome message
(setq inhibit-startup-message t)
(setq initial-scratch-message "") ;; set initial scratch message. Set as blank

(toggle-frame-fullscreen)

;; we want this for all
(add-hook 'prog-mode-hook 'paren-activate)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; to have y/n instead of explicit yes no
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'base)
;;; base.el ends here
