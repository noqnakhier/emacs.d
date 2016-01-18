(setenv "PATH"
        (concat (getenv "PATH")
                ":/usr/local/bin"))
(setq exec-path (append exec-path
                        '("/usr/local/bin")))

(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(setq themes-dir
      (expand-file-name "themes" user-emacs-directory))

(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path themes-dir)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


(require 'init-packages)
(require 'init-basic)
(require 'init-appearance)
(require 'init-yasnippet)
(require 'init-company-mode)
(require 'init-cc-mode)
(require 'init-python)
(require 'init-web-mode)
(require 'init-markdown-mode)
(require 'init-orgmode)
(require 'init-misc)
