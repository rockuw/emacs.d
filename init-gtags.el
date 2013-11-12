;;; gtags mode

(setq load-path
      (cons "/usr/local/Cellar/global/6.2.9/share/gtags/" load-path))
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-suggested-key-mapping t)

(provide 'init-gtags)
