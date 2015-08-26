;; 关闭菜单栏、工具栏和滚动条
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; 关闭欢迎界面
(setq inhibit-startup-message t)

;; 设置字体
;; Mac OS
(if (eq system-type 'darwin)
    (progn
      (set-default-font "Monaco 12")
      (set-frame-font "Monaco 12" nil t))
;; Windows
  (if (eq system-type 'windows-nt)
      (progn
        (set-default-font "Consolas 10")
        (set-frame-font "Consolas 10" nil t))
;; Linux
    (progn
      (set-default-font "Ubuntu Mono 12")
      (set-frame-font "Ubuntu Mono 12" nil t))
    ))

;; 设置显示行号，使用linum包
(require 'linum)
(global-linum-mode t)
(setq linum-format "%3d ")

;; 使用monokai主题
(require-package 'monokai-theme)
(load-theme 'monokai t)


(provide 'init-apparence)
