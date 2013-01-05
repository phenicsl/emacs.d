;;; yasnippet

(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet/")
(require 'yasnippet)

(yas/initialize)

(setq yas/root-directory (list (concat emacs.d "/snippets")))

(mapc 'yas/load-directory yas/root-directory)
