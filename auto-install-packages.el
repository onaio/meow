;;; auto-install-packages --- auto installs packages on startup if they don't exist

;;; Commentary:


;;; Code:
(require 'package)

(defvar package-list nil)

;; list the packages you want
(setq package-list
      '(;; base packages
        exec-path-from-shell
        company
        powerline
        solarized-theme
        smart-mode-line
        projectile
        grizzl
        neotree
        magit
        helm

        ;;javascript
        js2-mode

        ;; clojure
        clojure-mode
        clj-refactor
        cider
        flycheck-clojure
        aggressive-indent

        ;; haskell
        flycheck-haskell
        shm
        company-ghci
        haskell-mode

        ;; python
        python-mode

        ;; text interaction
        markdown-mode
        flyspell
        avy

        ;; lisps
        paredit

        ;; yaml mode
        yaml-mode

        ;; web
        tagedit
        css-mode
        sass-mode
        flymake-sass

        ;; json
        json-mode
        flymake-json
        json-reformat

        ;; programming
        toggle-test
        flycheck
        flycheck-pos-tip
        smartparens
        rainbow-delimiters
        mic-paren))

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
