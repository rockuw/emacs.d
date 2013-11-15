;;; basic C mode style

(require 'init-gtags)

(defun my-c-mode-hook ()
  (setq c-default-style "linux"
        c-basic-offset 4
        c-indent-level 4)
  (gtags-mode t))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(defun my-c++-mode-hook ()
  (c-set-style "linux")
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (c-set-offset 'innamespace '0)
  (c-set-offset 'inextern-lang '0)
  (c-set-offset 'inline-open '0)
  (c-set-offset 'label '*)
  (c-set-offset 'case-label '*)
  (c-set-offset 'access-label '/)
  (setq indent-tabs-mode nil))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(provide 'init-c-mode)
