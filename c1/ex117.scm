(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? n) (= (remainder n 2) 0))


(define (mul x y) ()
    (cond ((= 0 x) 0)
          ((= 1 x) y)  
          ((even? x) (mul (halve x) (double y)))
          (else (+ y (mul (- x 1) y)))))

(mul 2 2)
(mul 2 4)
(mul 4 2)
(mul 5 5)
(mul 100 100)
(mul 6 6)
(mul 0 20)
(mul 20 0)