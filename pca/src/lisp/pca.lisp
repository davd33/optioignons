;;; Principal Component Analysis

(in-package #:pca)

;; connect to database
(mito:connect-toplevel :postgres
                       :database-name "learn_stats"
                       :username "postgres"
                       :password "helloworld")

;; PCA DATABASE STUFF
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

(defun pca-obj? (pca)
  "Return T if pca is a pca object."
  (eq 'pca (type-of pca)))

(defun not-pca-obj? (pca)
  "Complements pca-obj?"
  (complement #'pca-obj?))

(defun print-pca (pca)
  (format t "~&++ PCA ++")
  (format t "~& city = ~A" (slot-value pca 'city)))

(defun create-table (table-type)
  "Creates the table as defined in the mito:deftable call of the symbol table-type."
  (mapc #'mito:execute-sql (mito:table-definition table-type))
  (mito:ensure-table-exists table-type))

;; PCA ALGORITHMS

(defun pca ())

(defun re-mean (old-mean new-elt n)
  "Updates the value of the mean of a set of elements taking into account
the new element, given the current number of elements n."
  (+ old-mean
     (* (/ 1 (1+ n))
        (- new-elt old-mean))))

(defun similarity (ind1 ind2 variables)
  "Computes Pythagore similarity between two PCA objects.
Variables are a list of symbols, as accessor of PCA objects."
  (sqrt (loop for k in variables
              sum (expt (- (slot-value ind1 k)
                           (slot-value ind2 k))
                        2))))

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

