;; from magnars' emacs.d
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
(setq package-enable-at-startup nil)
(package-initialize)

(unless (and (file-exists-p "~/.emacs.d/elpa/archives/gnu")
	   (file-exists-p "~/.emacs.d/elpa/archives/melpa")
	   (file-exists-p "~/.emacs.d/elpa/archives/marmalade"))
	  (package-refresh-contents))

;;; On-demand installation of packages

(defun require-package (package &optional min-version no-refresh)
    "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
    (if (package-installed-p package min-version)
	t
      (if (or (assoc package package-archive-contents) no-refresh)
	  (package-install package)
	(progn
	  (package-refresh-contents)
	  (require-package package min-version t)))))

(provide 'init-packages)
