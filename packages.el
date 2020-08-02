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
    ;; djvu
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
    ))
;;; packages.el ends here
