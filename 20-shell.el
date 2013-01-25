; Shell mode
(setq ansi-color-names-vector
      ["#171717" "#B22222" "#4F8c4F" "#D16040"
       "#4C708F" "#603C6F" "#2481A6" "#FCFCFC"])
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(add-hook 'shell-mode-hook
	  '(lambda () (toggle-truncate-lines 1)))
(setq comint-prompt-read-only t)

