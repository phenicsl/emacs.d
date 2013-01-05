;; definition of phenics-style for c/c++ programming 

(defface rosybrown-comment 
  '((t :foreground "rosybrown"))
  "rosybrown comment for cc-mdoe"
  :group 'basic-faces)

(defvar phenics-style
  '("stroustrup"
    (c-offsets-alist . ((case-label . + )
			(inextern-lang . 0 )
			(innamespace . 0)
			(inline-open . 0)))
    (c-doc-comment-style . '())))

(c-add-style "phenics" phenics-style)

(provide 'phenics-style)
