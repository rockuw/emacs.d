;;; golang mode

(setq load-path
      (cons "/usr/local/Cellar/go/1.1//misc/emacs/" load-path))
(require 'go-mode-load)

(defun my-go-mode-hook ()
  (setq tab-width 4))

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'init-go-mode)
