;12Составить бесконечная упорядоченная последовательность целых чисел составлена из степеней двойки и чисел 2 *3n.

;Генирирует упорядоченное для последовательности число
(defun generator () 
    (let 
        ((number 1)(n 1)(m 1))
        (lambda () 
                (if (< (pwr 2 m) (* 2 (* 3 n))) 
                    (setq number (pwr 2 m) m (+ m 1))
                    (setq number (* 2 (* 3 n)) n (+ n 1))   
                )
                number
         ) 
    ) 
)


;возведение х в степень у
(defun pwr (x y)
   (cond
       ((= y 0) 1)
       (t (* x (pwr x (- y 1))))
   )
)

(setq gen1 (generator)) 

;Собирает упорядоченную последовательность из N чисел
(defun seq(N)
    (cond ((= 0 N) nil)
        (t(cons (funcall gen1) (seq (- N 1)))))
)

(print (seq 15)) ; (2 4 6 8 12 16 18 24 30 32 36 42 48 54 60) 


