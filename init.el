;(require 'package)
;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;			 ("marmalade" . "http://marmalade-repo.org/packages/")
;			 ("melpa" . "http://melpa.milkbox.net/packages/")))
;(setq package-enable-at-startup nil)
;(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get-bundle monokai-theme
  (load-theme 'monokai t))
(set-default-font "Monaco 12")
(set-frame-font "Monaco 12" nil t)

; 关闭欢迎界面
(setq inhibit-startup-message t)

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

;; =================== linum ========================
(require 'linum)
(global-linum-mode t)
(setq linum-format "%3d ")
;; ------------------- linum ------------------------

;;==================== yasnippet ====================
(el-get-bundle yasnippet)
(el-get-bundle yasnippets)

(require 'yasnippet)
(setq yas-snippet-dirs
	'("~/.emacs.d/snippets" ;; personal snippets
	  "~/.emacs.d/el-get/yasnippets" ;; yasnippets package
	  "~/.emacs.d/el-get/yasnippet/snippets" ;; default snippets

	))
(yas-global-mode 1)

;; automatic reload after snippets changed
(defun reload-yasnippets-on-save-snippets ()
  (when (string-match "/snippets/" buffer-file-name)
    (yas/reload-all)
    ))
(add-hook 'after-save-hook 'reload-yasnippets-on-save-snippets)
;;-------------------- yasnippet --------------------

;;==================== auto-complete ================
(el-get-bundle auto-complete)
(ac-config-default)
; 使用quick-help
(setq ac-use-quick-help t)
; 直接显示补全菜单
(setq ac-auto-show-menu 0)
(setq ac-ignore-case 'smart)

;;-------------------- auto-complete ----------------

;;====================    jedi   =====================
;; 注意在第一次安装jedi之后，需要运行以下命令
;; M-x jedi:install-server RET
(el-get-bundle jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;;--------------------    jedi   ---------------------

;;===================== Emmet mode ===================
(el-get-bundle emmet-mode)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; 任意标记语言的情况下启用
(add-hook 'css-mode-hook 'emmet-mode) ;; CSS模式下启用
;;===================== Emmet mode ===================

;;===================== Markdown Mode ================
(el-get-bundle markdown-mode)
;; 打开 md, mkd, markdown后缀的文件时自动进入markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mkd\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;---------------------------------------------------

;;===================== Org Mode =====================
(setq org-log-down 'time)
;;---------------------------------------------------

;;===================== edit-server =====================
;; Chrome TextArea Edit with Emacs
(el-get-bundle edit-server)
(require 'edit-server)
(edit-server-start)
