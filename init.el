(package-initialize nil)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(use-package org)

(org-babel-load-file "~/.emacs.d/jsamsa.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/todo.org")))
 '(package-selected-packages
   (quote
    (web-mode csharp-mode ob-http lorem-ipsum groovy-mode magit dockerfile-mode helm-org-rifle helm-package helm-orgcard helm-projectile ag nodejs-repl tern tern-auto-complete tern-context-coloring js3-mode dracula-theme exec-path-from-shell less-css-mode typescript-mode grunt company projectile gradle-mode markdown-mode markdown-mode+ rainbow-identifiers rainbow-delimiters paredit haskell-mode 4clojure cider gnuplot smart-mode-line use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
