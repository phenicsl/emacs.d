;; (require 'fiplr)
;; (setq fiplr-root-markers '(".git" ".fiplr"))
;; (setq fiplr-ignored-globs '((directories (".git" ".svn"))
;;                             (files ("*.jpg" "*.png" "*.zip" "*~" "*.class" "*.jar"))))
;; (global-set-key (kbd "C-x f") 'fiplr-find-file)


(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
(setq projectile-project-root-files '())
(setq projectile-file-exists-remote-cache-expire (* 10 60))
