(in-package #:util)

(defun split-by (string char)
  "Returns a list of substrings of string
divided by ONE 'char' each.
Note: Two consecutive 'char' will be seen as
if there were an empty string between them."
  (loop for i = 0 then (1+ j)
        as j = (position char string :start i)
        collect (subseq string i j)
        while j))

(defun split-by-return (string)
  (split-by string #\Return))

(defun split-by-one-space (string)
  (split-by string #\Space))

(defun compose (&rest functions)
  "Compose FUNCTIONS right-associatively, returning a function"
  #'(lambda (x)
      (reduce #'funcall functions
              :initial-value x
              :from-end t)))
