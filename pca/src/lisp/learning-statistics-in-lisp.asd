;;;; learning-statistics-in-lisp.asd

(asdf:defsystem #:learning-statistics-in-lisp
  :description "Implement statistical methods in lisp."
  :author "David Rueda <davd33@gmail.com>"
  :license  "GPLv3"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "pca")
               (:file "learning-statistics-in-lisp")))
