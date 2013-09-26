(when *is-a-mac*
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none)
  (setq default-input-method "MacOSX")
  ;; Make mouse wheel / trackpad scrolling less jerky
  (setq mouse-wheel-scroll-amount '(0.001))
  (when *is-cocoa-emacs*
    ;; Woohoo!!
    (global-set-key (kbd "M-`") 'ns-next-frame)
    (global-set-key (kbd "M-h") 'ns-do-hide-emacs)
    (eval-after-load 'nxml-mode
      '(define-key nxml-mode-map (kbd "M-h") nil))
    (global-set-key (kbd "M-ˍ") 'ns-do-hide-others) ;; what describe-key reports for cmd-option-h
    ))

(defun pbcopy ()
  "Copy the contents of the region to clipboard "
  (interactive)
  (if (or (and (boundp 'mark-active) mark-active)
          (and (fboundp 'region-exists-p) (region-exists-p)))
      (call-process-region
       (region-beginning) (region-end) "pbcopy" nil t t)
    (error "region not selected")))

(provide 'init-osx-keys)
