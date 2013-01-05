;;; Python mode
(add-to-list 'load-path "~/.emacs.d/elpa/python")
(require 'python)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(add-hook 'python-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode)
	    (linum-mode)
	    (local-set-key "\C-m" 'newline-and-indent)
	    (setq show-trailing-whitespace t)
	    (subword-mode)))

