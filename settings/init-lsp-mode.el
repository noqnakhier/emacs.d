(require-package 'lsp-mode)
;; 在go-mode上延迟启动
(add-hook 'go-mode-hook #'lsp-deferred)

;; 用于company-backends来补全, lsp-mode会自动配置backends
(require-package 'company-lsp)

(provide 'init-lsp-mode)

