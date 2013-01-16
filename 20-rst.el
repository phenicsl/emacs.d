;;; Configuration file for rst mode

(require 'rst)
(setq rst-preferred-decorations
      '((61 simple 0)
	(45 simple 0)
	(126 simple 0)
	(94 simple 0)
	(35 simple 0)
	(64 simple 0)))

(add-hook 'rst-mode-hook (lambda ()
			    (table-recognize)))

