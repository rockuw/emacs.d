;;; golang mode

(require 'go-mode-load)

(setq load-path
      (cons "/usr/local/Cellar/go/1.1//misc/emacs/" load-path))

(defun my-go-mode-hook ()
  (setq tab-width 4))

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'init-go-mode)
