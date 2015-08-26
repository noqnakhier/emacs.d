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
(require 'init-jedi)
(require 'init-emmet-mode)
(require 'init-markdown-mode)

(require 'init-misc)
