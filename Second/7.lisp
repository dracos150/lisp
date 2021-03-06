;7. Определите фильтр (УДАЛйЬ-ЕСЛИ-НЕ пред список), удаляющий из списка список
;все элементы, которые не обладают свойством, наличие которого проверяет
;предикат пред.

(defun main (func arr)
    (mapcan 
        (lambda (x) 
            (cond
                ((apply func (list x)) NIL)
                (T (list x))
            )
        ) 
    arr)
)

(print (main #'evenp '(1 2 3 4 5) )) ;(1 3 5)
