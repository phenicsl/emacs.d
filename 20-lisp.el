;lisp-mode-hook
(defun emacs-lisp-indent-newline ()
  (interactive)
  (indent-for-tab-command)
  (newline))

(add-hook 'emacs-lisp-mode-hook 
	  (lambda ()
	    (linum-mode)
	    (local-set-key [(return)] 'emacs-lisp-indent-newline)
;	    (rainbow-delimiters-mode)
	    (setq show-trailing-whitespace t)))

