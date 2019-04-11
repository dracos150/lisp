3. Определите функционал который применяет каждую функ-цию списка к списку х возвращает список, сформированный из результатов
(defun APL-APPLY (f x)
    (cond
         ((null (car f)) nil) 
         (t (cons (apply (car f) x)
                  (APL-APPLY (cdr f) x))))             
)

(print(APL-APPLY '(+ - *) '(1 2 3 4))) ; => (10 -8 24) 
