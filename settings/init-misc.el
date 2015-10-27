(require-package 'edit-server)
(require 'edit-server)
(edit-server-start)

(require-package 'iedit)
(require 'iedit)
(define-key global-map (kbd "C-c ;") 'iedit-mode)

(require-package 'w3m)
(setq w3m-default-display-inline-images t)
(setq browse-url-browser-function 'w3m-browse-url
          browse-url-new-window-flag t)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)
(global-set-key "\C-xu" 'browse-url)
(setq w3m-use-cookies t)

(provide 'init-misc)
