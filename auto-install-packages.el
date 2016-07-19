;;; auto-install-packages --- auto installs packages on startup if they don't exist

;;; Commentary:


;;; Code:


(defvar package-list nil)

(require 'package)

; list the packages you want
(setq package-list
      '(auto-complete
	color-theme-solarized
	mic-paren
        dash
	avy
	counsel
        epl
        flycheck
	flyspell
	toggle-test
      	magit
	projectile
        flycheck-haskell
	flycheck-clojure
	flycheck-pos-tip
	find-file-in-project
        haskell-mode
        let-alist
        markdown-mode
        pkg-info
	smartparens
	rainbow-delimiters
	aggressive-indent
	powerline
        popup
        seq
	shm
	neotree
	cider
	paredit	))

; list the repositories containing them
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("ELPA" . "http://tromey.com/elpa/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


(provide 'auto-install-packages)
;;; auto-install-packages.el ends here
