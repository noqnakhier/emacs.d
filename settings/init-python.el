;; 注意在第一次安装jedi之后，需要运行以下命令
;; M-x jedi:install-server RET
;; 然后pip install jedi


(require-package 'company-jedi)
(defun my:python-mode-init()
  (setq python-shell-interpreter "python3")
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my:python-mode-init)

(provide 'init-python)
