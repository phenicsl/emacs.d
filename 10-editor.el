(setq server-use-tcp t)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq make-backup-files nil)
(setq max-specpdl-size 10240)

; set text-mode to be the default.
(setq default-major-mode 'text-mode)
(add-hook 'text-mode
          (lambda ()
            (setq require-final-newline nil)))


(setq default-fill-column 80)

;;; ido-mode and icomplete-mode
(require 'ido)
(ido-mode t)
(ido-toggle-regexp)
(icomplete-mode)

;;; Uniquify | unique file buffer name
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separater "/")
(setq uniquify-after-kill-buffer-p t)	;rename after killing uniquified
(setq uniquify-ignore-buffer-re "^\\*")	;don't muck with special buffers.

;;; Enable useful dangrous functions
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'upcase-region 'disabled nil)

(global-set-key (kbd "C-SPC") nil)

(global-set-key "\M-w" 'clipboard-kill-ring-save)

(global-set-key [?\S- ] 'set-mark-command)

;;; aspell
(setq-default ispell-program-name "aspell")

