;;; Principal Component Analysis

(in-package #:pca)

;; connect to database
(mito:connect-toplevel :postgres
                       :database-name "learn_stats"
                       :username "postgres"
                       :password "helloworld")

(mito:deftable pca ()
  ((city :col-type (:varchar 64))
   (january :col-type (:real))
   (february :col-type (:real))
   (march :col-type (:real))
   (april :col-type (:real))
   (may :col-type (:real))
   (juny :col-type (:real))
   (july :col-type (:real))
   (august :col-type (:real))
   (september :col-type (:real))
   (october :col-type (:real))
   (november :col-type (:real))
   (december :col-type (:real))
   (longitude :col-type (:real))
   (latitude :col-type (:real)))
  (:unique-keys city))

(defun print-pca (pca)
  (format t "~&++ PCA ++")
  (format t "~& city = ~A" (slot-value pca 'city)))

(defun create-table (table-type)
  "Creates the table as defined in the mito:deftable call of the symbol table-type."
  (mapc #'mito:execute-sql (mito:table-definition table-type))
  (mito:ensure-table-exists table-type))

(defun main ()
  (create-table 'pca)

  ;; some manual queries
  (mito:execute-sql (select :*
                      (from :pca)))

  ;; some dao queries
  (let ((bx (mito:find-dao 'pca :city "Bordeaux")))
    (format t "~&city = ~A" (slot-value bx 'city)))

  (let ((all-data (mito:retrieve-dao 'pca)))
    (when (listp all-data) (format t "received a list"))
    (loop for city in all-data
          do (print-pca city)))

  )

