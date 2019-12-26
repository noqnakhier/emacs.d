;; init-python.el

(require-package 'lsp-python-ms)
(require 'lsp-python-ms)
(add-hook 'python-mode-hook #'lsp)
(setq python-indent-offset 4)
(setq lsp-python-ms-executable
      "~/Dev/mspls/output/bin/Release/osx-x64/publish/Microsoft.Python.LanguageServer")


(provide 'init-python)
