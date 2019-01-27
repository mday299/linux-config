(add-to-list 'load-path "~/repos/emacs/evil/")
(add-to-list 'load-path "~/repos/emacs/dash.el/")
(add-to-list 'load-path "~/repos/emacs/monitor/")
(add-to-list 'load-path "~/repos/emacs/org-evil/")
(require 'evil)
(evil-mode 1)
(require 'dash)
(require 'monitor)
(require 'org-evil)

(setq org-todo-keywords
      '((sequence "TODO" "WAITING" "|" "DONE")))
;;set priority range from A to C with default A
(setq org-highest-priority ?1)
(setq org-lowest-priority ?5)
(setq org-default-priority ?1)
