;;; configuraiton for nxml-mode

(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.xsl$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.fo$" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . nxml-mode))

(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files
		"~/emacs.d/lib/nxml/schemas.xml"))

(add-hook 'nxml-mode-hook (lambda()
			    (linum-mode)
			    (setq rng-validate-mode nil)
			    (setq nxml-slash-auto-complete-flag t)))
