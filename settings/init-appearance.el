;; 关闭菜单栏、工具栏和滚动条
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; 关闭欢迎界面
(setq inhibit-startup-message t)




;; 设置显示行号，使用linum包
(require-package 'linum)
(global-linum-mode t)
(setq linum-format "%3d ")

(require-package 'monokai-theme)
(load-theme 'monokai t)
(provide 'init-appearance)
