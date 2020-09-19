;; init-python.el

(require-package 'lsp-python-ms)
(require 'lsp-python-ms)
(add-hook 'python-mode-hook #'lsp)
(setq python-indent-offset 4)
;(setq lsp-python-ms-executable
;      "~/Dev/mspls/output/bin/Release/osx-x64/publish/Microsoft.Python.LanguageServer")
(setq lsp-python-ms-executable
      "/home/noqnakhier/Dev/lsp-server/python-language-server/output/bin/Release/linux-x64/publish/Microsoft.Python.LanguageServer")
;(setq python-shell-interpreter "/usr/bin/python3.8")

(provide 'init-python)
