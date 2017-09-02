(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
  (require 'diminish)
  (require 'bind-key)

(custom-set-variables
  '(custom-safe-themes
    '("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default))
  '(package-selected-packages
    (quote
      (evil-vimish-fold terraform-mode evil-magit git-gutter paradox evil-nerd-commenter haskell-mode nix-mode helm-projectile json-mode highlight-operators highlight-numbers auto-highlight-symbol highlight-symbol projectile org-evil org-edna color-theme-approximate color-theme-solarized color-theme-sanityinc-solarized flycheck solarized-theme js2-mode magit neotree helm evil))))

(org-babel-load-file "~/.emacs.d/init-el.org")

(provide 'init)

