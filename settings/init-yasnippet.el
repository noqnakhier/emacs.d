(require-package 'yasnippet)
(require 'yasnippet)
(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacs.d/snippets"))) ;; personal snippets
(yas-global-mode 1)

;; automatic reload after snippets changed
(defun reload-yasnippets-on-save-snippets ()
  (when (string-match "/snippets/" buffer-file-name)
    (yas/reload-all)
    ))
(add-hook 'after-save-hook 'reload-yasnippets-on-save-snippets)

(provide 'init-yasnippet)
