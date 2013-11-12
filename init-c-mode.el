;;; basic C mode style

(require 'init-gtags)

(defun my-c-mode-hook ()
  (setq c-default-style "linux"
        c-basic-offset 4
        c-indent-level 4)
  (gtags-mode t))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(provide 'init-c-mode)
