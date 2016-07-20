(require 'neotree)
(require 'projectile)

(projectile-global-mode)

;; Find files easily
(autoload 'find-file-in-project "find-file-in-project" nil t)
(autoload 'find-file-in-project-by-selected "find-file-in-project" nil t)
(autoload 'find-directory-in-project-by-selected "find-file-in-project" nil t)
(autoload 'ffip-show-diff "find-file-in-project" nil t)
(autoload 'ffip-save-ivy-last "find-file-in-project" nil t)
(autoload 'ffip-ivy-resume "find-file-in-project" nil t)

(setq ffip-find-options  "-not -size +64k -not -iwholename '*/dist/*'")

(setq ffip-patterns
      '("*.clj?"
        "*.hs"
        "*.lhs"
        "*py"
        "*rb"
        "*el"
        "*md"
        "*.html"
        "*.css"
        "*.java"
        "*.xml"
        "*.js"))

(setq ffip-prune-patterns '("*/.git/*"
                            "*/node_modules/*"
                            "*/index.js"
                            "*/out/*"
                            "*/target/*"))


;; If you use the find-file-in-project (ffip) library, you can open NeoTree at your directory root.
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
        (file-name (buffer-file-name)))
    (if project-dir
        (progn
          (neotree-dir project-dir)
          (neotree-find file-name))
      (message "Could not find git project root."))))


;; When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically
(setq projectile-switch-project-action 'neotree-projectile-action)

(provide 'proj-conf)
