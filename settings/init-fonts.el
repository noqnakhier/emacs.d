;; 设置中文字体，使用chinese-fonts-setup包
(require-package 'cnfonts)
(require 'cnfonts)
(setq cnfonts-profiles
      '("mac" "ubuntu" "windows"))
;; 设置字体
;; Mac OS
(if (eq system-type 'darwin)
    (setq cnfonts--current-profile-name "mac"))
;; Windows
(if (eq system-type 'windows-nt)
    (setq cnfonts--current-profile-name "windows"))
;; Linux
(if (eq system-type 'gnu/linux)
    (setq cnfonts--current-profile-name "ubuntu"))

(if (eq system-type 'darwin)
    (
     ;; Auto generated by cnfonts
     ;; <https://github.com/tumashu/cnfonts>
     (set-face-attribute
      'default nil
      :font (font-spec :name "-*-Monaco-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
                       :weight 'normal
                       :slant 'normal
                       :size 12.5))
     (dolist (charset '(kana han symbol cjk-misc bopomofo))
       (set-fontset-font
        (frame-parameter nil 'font)
        charset
        (font-spec :name "-*-Hiragino Sans GB-normal-normal-normal-*-*-*-*-*-p-0-iso10646-1"
                   :weight 'normal
                   :slant 'normal
                   :size 15.0)))
     )
  )

(if (eq system-type 'windows-nt)
    (
     (message "hello, world!")
     )
  )

(provide 'init-fonts)