;;; org mode configuration file
;;;
;;; this file should be loaded in ~/.emacs as part of the Emacs startup process
;;;
;;; @prerequirement:
;;;  share-path should be set to be the path of elisp directory
;;;
(require 'org-install)
(require 'org-mouse)

(define-key mode-specific-map [?a] 'org-agenda)

(eval-after-load "org"
  '(progn
     (define-prefix-command 'org-todo-state-map)

     (define-key org-mode-map "\C-cx" 'org-todo-state-map)

     (define-key org-todo-state-map "x"
       (lambda nil (interactive) (org-todo "CANCELLED")))
     (define-key org-todo-state-map "d"
       (lambda nil (interactive) (org-todo "DONE")))
     (define-key org-todo-state-map "f"
       (lambda nil (interactive) (org-todo "DEFERRED")))
     (define-key org-todo-state-map "l"
       (lambda nil (interactive) (org-todo "DELEGATED")))
     (define-key org-todo-state-map "s"
       (lambda nil (interactive) (org-todo "STARTED")))
     (define-key org-todo-state-map "w"
       (lambda nil (interactive) (org-todo "WAITING")))))

(eval-after-load "org-agenda"
  '(progn
     (define-key org-agenda-mode-map "\C-n" 'next-line)
     (define-key org-agenda-keymap "\C-n" 'next-line)
     (define-key org-agenda-mode-map "\C-p" 'previous-line)
     (define-key org-agenda-keymap "\C-p" 'previous-line)))

(require 'remember)
(add-hook 'remember-mode-hook 'org-remember-apply-template)
(define-key global-map [(control meta ?r)] 'remember)


(setq org-agenda-files (list "~/org/personal.org" 
			     "~/org/work.org")
      org-default-notes-file "~/org/notes.org"
      org-agenda-ndays 7
      org-deadline-warning-days 14
      org-agenda-show-all-dates t
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-scheduled-if-done t
      org-agenda-start-on-weekday nil
      org-reverse-note-order t
      org-fast-tag-selection-single-key (quote expert))

(setq org-remember-store-without-prompt t
      org-remember-templates  '((116 "* %iTODO %^{Brief Description} %^g\n%?\n  Added: %U" "~/org/todo.org" "Tasks")
				(110 "* %u %?\n %i\n %a " "~/org/notes.org" "Notes"))

      remember-annotation-functions (quote (org-remember-annotation))
      remember-handler-functions (quote (org-remember-handler)))

(add-hook 'org-mode-hook
	  (lambda ()
	    (make-variable-buffer-local 'yas/trigger-key)
	    (setq yas/trigger-key [tab])
	    (define-key yas/keymap [tab] 'yas/next-field-group)))

(setq org-file-apps (append '(("html" . "firefox %s") ("chm" . "chmsee %s")) org-file-apps))

(add-hook 'remember-mode-hook 'org-remember-apply-template)
(global-set-key "\C-cr" 'org-remember)

;; (add-to-list 'load-path (concat emacshome "emacs-goodies/"))

;; (eval-after-load "htmlize"
;;  '(progn
;;     (defadvice htmlize-faces-in-buffer (after org-no-nil-faces activate)
;;       "Make sure there are no nil faces"
;;       (setq ad-return-value (delq nil ad-return-value)))))
