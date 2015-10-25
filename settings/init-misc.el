(require-package 'edit-server)
(require 'edit-server)
(edit-server-start)

(require-package 'iedit)
(require 'iedit)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

(provide 'init-misc)
