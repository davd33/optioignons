;;; Principal Component Analysis

(in-package #:pca)

;; connect to database
(mito:connect-toplevel :mysql :database-name "learn_stats" :username "postgres" :password "helloworld")

