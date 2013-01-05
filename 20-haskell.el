(add-to-list 'load-path (concat extension-path "/haskell-mode"))
(load "haskell-site-file")
(add-hook 'haskell-mode-hook 
	  (lambda ()
	    (turn-on-haskell-doc-mode)
	    (turn-on-haskell-indent)
	    (linum-mode)))