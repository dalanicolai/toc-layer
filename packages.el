;;; packages.el --- toc layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Daniel Laurens Nicolai <dalanicolai@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `toc-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `toc/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `toc/pre-init-PACKAGE' and/or
;;   `toc/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst toc-packages
  '(
    pdf-tools
    djvu
    (toc-mode :location (recipe
                             :fetcher github
                             :repo "dalanicolai/toc-mode"))
))

;; (defun toc/init-djvu ()
;;   (use-package djvu
;;     :defer t
;;     ))

(defun toc/init-toc-mode ()
  (use-package toc-mode
    :defer t
    :config
    (evilified-state-evilify toc-tabular-mode toc-tabular-mode-map
      "r"  'toc--replace-input)
    ))

(defun toc/pre-init-pdf-tools ()
  (spacemacs/set-leader-keys-for-major-mode 'pdf-view-mode "e" 'toc-extract-pages)
  (spacemacs/set-leader-keys-for-major-mode 'pdf-view-mode "o" 'toc-extract-pages-ocr)
    )

(defun toc/pre-init-djvu ()
  (spacemacs/set-leader-keys-for-major-mode 'djvu-read-mode "e" 'toc-extract-pages)
  (spacemacs/set-leader-keys-for-major-mode 'djvu-read-mode "o" 'toc-extract-pages-ocr)
  )

;;; packages.el ends here
