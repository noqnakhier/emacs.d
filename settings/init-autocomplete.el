(require-package 'auto-complete)

(require 'auto-complete)
(require 'auto-complete-config)

; 使用quick-help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.3)
; 直接显示补全菜单
(setq ac-auto-show-menu 0)
(setq ac-ignore-case 'smart)
(setq ac-quick-help-prefer-pos-tip t)
(global-auto-complete-mode t)

(ac-config-default)

(provide 'init-autocomplete)
