;;; optioignons.asd

(asdf:defsystem #:optioignons
  :description "Implement statistical methods in lisp."
  :author "David Rueda <davd33@gmail.com>"
  :license  "GPLv3"
  :version "0.0.1"
  :serial t
  :depends-on (#:mito)
  :components ((:file "package")
               (:file "pca")
               (:file "util")
               (:file "optioignons")))
