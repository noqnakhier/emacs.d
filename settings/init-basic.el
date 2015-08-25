; 关闭自动文件备份
(setq make-backup-files nil)

; 将标记的快捷键改为 M-SPC
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)

; 精简窗口管理模式
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)

; 使用y或者n来代替yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

; 使用空格符代替缩进符
(setq-default indent-tabs-mode nil)

;; 设置Tab的宽度为4
(setq-default tab-width 4)
(setq tab-width 4)

;; 设置在当前行上新增一行快捷键
(defun smart-open-line-above ()
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(meta o)] 'smart-open-line-above)


(provide 'init-basic)
