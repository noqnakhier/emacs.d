(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)
(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
    (normal-top-level-add-subdirs-to-load-path))

(require 'init-packages)
(require 'init-basic)
(require 'init-apparence)
(require 'init-yasnippet)
(require 'init-autocomplete)
(require 'init-autocomplete-clang)
(require 'init-cc-mode)
(require 'init-jedi)
(require 'init-emmet-mode)
(require 'init-markdown-mode)
(require 'init-orgmode)
(require 'init-wanderlust)
(require 'init-misc)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cfs--current-profile-name "profile1" t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
