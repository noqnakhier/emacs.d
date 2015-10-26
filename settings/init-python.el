;; 注意在第一次安装jedi之后，需要运行以下命令
;; M-x jedi:install-server RET
;; 然后pip install jedi
(setq python-shell-interpreter "python3")

(require-package 'jedi)
(require 'jedi)
(setq jedi:environment-root "jedi");
(setq jedi:environment-virtualenv
      (append python-environment-virtualenv
              '("--python" "python3")))

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)



(provide 'init-python)
