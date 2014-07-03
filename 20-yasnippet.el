;;; yasnippet

(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet/")
(require 'yasnippet)

(setq yas/root-directory (list (concat emacs.d "/snippets")))

(yas-global-mode 1)

;(mapc 'yas/load-directory yas/root-directory)
