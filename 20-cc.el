;;; configuration file for cc-mode

;;; CC Mode
(require 'phenics-style)

;; set for loading c and c++ file
(add-hook 'c-mode-hook (lambda ()
			 (c-set-style "phenics")
			 (setq tab-width 4)
			 (setq indent-tabs-mode nil)
			 (electric-pair-mode)
			 (linum-mode)
			 (rainbow-delimiters-mode)
			 (setq show-trailing-whitespace t)))

(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook (lambda ()
			   (c-set-style "phenics")
			   (setq tab-width 4)
			   (setq indent-tabs-mode nil)
			   (electric-pair-mode)
			   (linum-mode)
			   (subword-mode)
			   (rainbow-delimiters-mode)
			   (setq show-trailing-whitespace t)))

(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-to-list 'auto-mode-alist '("\\.itf$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ice$" . c++-mode))
