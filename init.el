(if (eq system-type 'darwin)
    (
     (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
     (setq exec-path (append exec-path '("/usr/local/bin")))
     ))
  

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
(require 'init-lsp-mode)
;;(require 'init-go-mode)
;;(require 'init-cc-mode)
;;(require 'init-python)
;;(require 'init-web-mode)
;;(require 'init-markdown-mode)
;;(require 'init-orgmode)
;;(require 'init-misc)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" default)))
 '(package-selected-packages (quote (evil monokai-theme yasnippet company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require-package 'evil)
(require 'evil)
(evil-mode 1)
