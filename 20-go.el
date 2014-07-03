;;; go mode
(add-to-list 'load-path "~/emacs.d/lib/go-mode")
(require 'go-mode-load)

(add-hook 'go-mode-hook (lambda ()
;			  (add-hook 'before-save-hook 'gofmt-before-save)
			  (rainbow-delimiters-mode)
			  (setq tab-width 4)
			  (linum-mode)
			  (setq show-trailing-whitespace t)
			  (subword-mode)))
