(require-package 'company)

;; 下面编程模式和CMake模式使用company mode
(add-hook 'prog-mode-hook 'global-company-mode)
(add-hook 'cmake-mode-hook 'global-company-mode)

;; 以下的模式不使用Company Mode
(setq company-global-modes
      '(not
        eshell-mode comint-mode org-mode erc-mode gud-mode))

(setq company-show-numbers nil)
(setq company-begin-commands '(self-insert-command))
(setq company-idle-delay 0)
(setq company-clang-insert-arguments nil)
(setq company-require-match nil)
(setq company-etags-ignore-case t)

(setq company-auto-complete nil)

(provide 'init-company-mode)
