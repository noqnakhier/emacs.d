;; Emmet Mode Settings
(require-package 'emmet-mode)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; 任意标记语言的情况下启用
(add-hook 'css-mode-hook 'emmet-mode) ;; CSS模式下启用

;; Live editing settings
;; Use M-x httpd-start, and active impatient-mode
;; Use web browser to visiting http://localhost:8080/imp
(require-package 'impatient-mode)
(require 'impatient-mode)

(provide 'init-web-mode)
