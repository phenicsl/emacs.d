;;; scala-mode
(add-to-list 'load-path (concat extension-path "/scala-mode"))
(require 'scala-mode)
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-hook 'scala-mode-hook (lambda ()
			     (linum-mode)))
