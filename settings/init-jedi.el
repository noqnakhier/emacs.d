;; 注意在第一次安装jedi之后，需要运行以下命令
;; M-x jedi:install-server RET
(require-package 'jedi)
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(provide 'init-jedi)
