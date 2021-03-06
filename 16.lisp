;16. Определите функцию, добавляющую элементы одного списка во второй список, начиная с заданной позиции.
(defun AddInList (list additionalList index) 
    ((lambda (head tail) 
        (cond ((equal 0 index) (cons additionalList list))
        (t (cons head (AddInList tail additionalList (- index 1))))
        )
     )
     (car list)
     (cdr list)
    )
)
(print(AddInList '(1 2 3 4 5 7 8 9) "I'm Here" 4)) ; => (1 2 3 4 "I'm Here" 5 7 8 9) 
