(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(global-evil-leader-mode)
(evil-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-intercept-maps nil)
 '(evil-overriding-maps nil)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun my-move-key (keymap-from keymap-to key)
    (define-key keymap-to key (lookup-key keymap-from key))
    (define-key keymap-from key nil))
(my-move-key evil-motion-state-map evil-normal-state-map (kbd "RET"))
(my-move-key evil-motion-state-map evil-normal-state-map " ")

(load "elscreen" "ElScreen" t)                                             
(elscreen-start)                                                           
(define-key evil-normal-state-map (kbd "C-w t") 'elscreen-create) ;create t
(define-key evil-normal-state-map (kbd "C-w x") 'elscreen-kill) ;kill tab  

(define-key evil-normal-state-map "gT" 'elscreen-previous) ;previous tab   
(define-key evil-normal-state-map "gt" 'elscreen-next) ;next tab           
