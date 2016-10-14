;; proj-conf --- project management

;;; Commentary:


;;; Code:
(require 'neotree)
(require 'projectile)


(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

(setq neo-theme 'arrow)

;; When running ‘projectile-switch-project’ (C-c p p)
;; neotree will change root automatically
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-smart-open t)
(setq neo-show-hidden-files t)

(provide 'proj-conf)
;;; proj-conf.el ends here.
