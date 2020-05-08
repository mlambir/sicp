(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? n) (= (remainder n 2) 0))


(define (mul x y) (mulit 0 x y))

(define (mulit a x y) ()
    (cond ((= 0 x) 0)
          ((= 1 x) (+ a y))  
          ((even? x) (mulit a (halve x) (double y)))
          (else (mulit (+ y a) (- x 1) y))))

(mul 2 2)
(mul 2 4)
(mul 4 2)
(mul 5 5)
(mul 100 100)
(mul 6 6)