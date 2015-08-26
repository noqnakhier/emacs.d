(require-package 'emmet-mode)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; 任意标记语言的情况下启用
(add-hook 'css-mode-hook 'emmet-mode) ;; CSS模式下启用


(provide 'init-emmet-mode)
