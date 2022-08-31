;;; init.el --- Summary: Bakku's personal Emacs distribution
;;; Commentary:
;;; Nothing more to say...

(require 'package)

;;; Code:
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Emacs uses this, do not touch !
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" default))
 '(package-selected-packages
   '(all-the-icons rspec-mode yafolding rg evil-matchit vue-mode org-contrib evil-nerd-commenter lsp-ivy typescript-mode yasnippet go-mode zones visual-fill-column ivy-rich yaml-mode neotree flycheck-pos-tip js2-mode add-node-modules-path inf-ruby exec-path-from-shell company lsp-mode web-mode gruvbox-theme general evil-collection magit doom-modeline markdown-mode cider clojure-mode flycheck-clj-kondo flycheck rainbow-delimiters projectile org-bullets smex which-key key-chord counsel evil)))

;; Emacs uses this, do not touch !
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file
 (expand-file-name "settings.org"
		   user-emacs-directory))
