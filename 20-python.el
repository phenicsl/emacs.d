;;; Python mode
;; (add-to-list 'load-path "~/.emacs.d/elpa/python")
;; (add-to-list 'load-path "~/.emacs.d/elpa/jedi")
;; (add-to-list 'load-path "~/.emacs.d/elpa/epc")

(require 'python)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(setq jedi:server-command
     `("/home/xiedun/local/pyenv/main/bin/python"
       "/home/xiedun/.emacs.d/elpa/jedi-0.1.2/jediepcserver.py"))

(setq jedi:setup-keys t)

(add-hook 'python-mode-hook
	  (lambda ()
	    (rainbow-delimiters-mode)
	    (linum-mode)
	    (local-set-key "\C-m" 'newline-and-indent)
	    (setq show-trailing-whitespace t)
	    (jedi:setup)
	    (global-set-key (kbd "M-/") 'jedi:complete)
	    (auto-complete-mode t)
	    (subword-mode)))
