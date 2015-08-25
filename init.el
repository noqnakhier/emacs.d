(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)

(require 'init-packages)
(require 'init-basic)
(require 'init-apparence)
(require 'init-yasnippet)
(require 'init-autocomplete)
(require 'init-autocomplete-clang)

;;====================    jedi   =====================
;; 注意在第一次安装jedi之后，需要运行以下命令
;; M-x jedi:install-server RET
(require-package 'jedi)
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;;--------------------    jedi   ---------------------

;;===================== Emmet mode ===================
(require-package 'emmet-mode)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; 任意标记语言的情况下启用
(add-hook 'css-mode-hook 'emmet-mode) ;; CSS模式下启用
;;===================== Emmet mode ===================

;;===================== Markdown Mode ================
(require-package 'markdown-mode)
(require 'markdown-mode)
;; 打开 md, mkd, markdown后缀的文件时自动进入markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mkd\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;---------------------------------------------------
;;===================== edit-server =====================
;; Chrome TextArea Edit with Emacs
(require-package 'edit-server)
(require 'edit-server)
(edit-server-start)
