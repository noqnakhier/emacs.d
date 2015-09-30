;;(setq org-log-down 'time)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/Documents/org/work.org"
                             "~/Documents/org/study.org"
                             "~/Documents/org/life.org"
                             "~/Documents/org/others.org"))
;; Add iimage mode
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on inline image minor mode." t)
(provide 'init-orgmode)
