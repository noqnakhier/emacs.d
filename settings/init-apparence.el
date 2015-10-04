;; 关闭菜单栏、工具栏和滚动条
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; 关闭欢迎界面
(setq inhibit-startup-message t)



;; 设置中文字体，使用chinese-fonts-setup包
(require-package 'chinese-fonts-setup)
(require 'chinese-fonts-setup)
(setq cfs-profiles
      '("mac" "ubuntu" "windows"))
;; 设置字体
;; Mac OS
(if (eq system-type 'darwin)
    (setq cfs--current-profile-name "mac"))
;; Windows
(if (eq system-type 'windows-nt)
    (setq cfs--current-profile-name "windows"))
;; Linux
(if (eq system-type 'gnu/linux)
    (setq cfs--current-profile-name "ubuntu"))

;; 设置显示行号，使用linum包
(require 'linum)
(global-linum-mode t)
(setq linum-format "%3d ")

;; 使用monokai主题
(require-package 'monokai-theme)
(load-theme 'monokai t)


(provide 'init-apparence)
