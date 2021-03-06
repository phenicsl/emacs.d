;;; definie ui utilities and configurations

;; test whether it is a tty
(defun is-tty ()
  (if (equal (frame-parameter nil 'font) "tty")
      t
    nil))

;; configure appearance
;(set-default-font "DejaVu Sans Mono-9")
(set-default-font "Ubuntu Mono-10.5")
(set-default-font "Monaco-9")

(setq default-frame-alist '((font . "Monaco-9")
			    (vertical-scroll-bars . nil)))

(if (display-graphic-p)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
			charset
			(font-spec :family "Microsoft Yahei" :size 12))))

(setq inhibit-splash-screen t)
(global-font-lock-mode t)
(column-number-mode)
(setq-default transient-mark-mode t)
(setq next-line-add-newline nil)

(if (display-graphic-p)
    (progn
      (set-scroll-bar-mode nil)
      (tool-bar-mode -1)
      (menu-bar-mode -1))
    (progn
      (menu-bar-mode -1)))



;; show the other parentheses when it match but not jump to it.
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(auto-image-file-mode)
(setq frame-title-format (list "%b - " "@" (getenv "USERNAME")))

;; full screen function definition
(defun my-fullscreen()
  (interactive)
  (menu-bar-mode)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

(global-set-key [f11] 'my-fullscreen)


;;;
;; (require 'highlight-beyond-fill-column)
;; (setq highlight-beyond-fill-column-in-modes
;;       '("emacs-lisp-mode" "c-mode" "python-mode"))

;; no blink cursor
(blink-cursor-mode -1)

;; theme
(add-to-list 'custom-theme-load-path "~/emacs.d/themes")

(if (display-graphic-p)
    (load-theme 'phenicsl-light t)
    ;(load-theme 'gtk-ide t)
  (load-theme 'phenicsl-dark t))

(if (display-graphic-p)
    (progn
      (add-to-list 'load-path "~/.emacs.d/elpa/powerline")
      (require 'powerline)
      (powerline-default-theme)
      (setq powerline-default-separator 'arrow)))
