(require-package 'cmake-mode)

(require-package 'flymake-google-cpplint)
(require-package 'flymake-cursor)
(defun my:flymake-google-init()
  (require 'flymake-google-cpplint)
  ;; pip install cpplint
  (setq flymake-google-cpplint-command "/usr/local/bin/cpplint")
  (flymake-google-cpplint-load))

(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)

(require-package 'google-c-style)
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)


;; irony
;; On Ubuntu install libclang-dev package.
;; On Mac OS X use homebrew to install "llvm --with-clang",
;; and add -DCMAKE_PREFIX_PATH=/usr/local/opt/llvm to 
;; `irony-install-server` command.
(require-package 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(require-package 'company-irony)
(eval-after-load 'company 
  '(add-to-list 'company-backends 'company-irony))

;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)


(provide 'init-cc-mode)
