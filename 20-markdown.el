(add-to-list 'load-path "~/.emacs.d/elpa/markdown-mode")

(require 'markdown-mode)
(add-hook 'markdown-mode-hook
	  (lambda ()
	    (linum-mode)
	    (auto-fill-mode)))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

