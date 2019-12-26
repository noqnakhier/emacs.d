;;(if (eq system-type 'darwin)
;;    (
;;     (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;;     (setq exec-path (append exec-path '("/usr/local/bin")))
;;     ))
  

(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)

(require 'init-elpa)
(require 'init-basic)
(require 'init-appearance)
(require 'init-yasnippet)
(require 'init-company-mode)
(require 'init-go-mode)
(require 'init-lsp-mode)
(require 'init-orgmode)
;;(require 'init-cc-mode)
(require 'init-python)
;;(require 'init-web-mode)
;;(require 'init-markdown-mode)
(require 'init-misc)

(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)


;; 过渡阶段
(require-package 'evil)
(require 'evil)
(evil-mode 1)
