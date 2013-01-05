(defun is-tty ()
  (if (equal (frame-parameter nil 'font) "tty")
      t
    nil))

(if (not (is-tty))
    (load-theme 'phenicsl-light t)
  (load-theme 'phenicsl-dark t))
