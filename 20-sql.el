(add-hook 'sql-mode-hook (lambda ()
			   (setq tab-width 4)
			   (rainbow-delimiters-mode)
			   (setq indent-tabs-mode nil)))
