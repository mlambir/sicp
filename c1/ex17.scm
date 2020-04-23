(define (sqrt-iter oldguess guess x)
  (if (good-enough? oldguess guess x)
      guess
      (sqrt-iter guess 
                (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? oldguess guess x)
  (< (abs (- guess oldguess)) 0.000001))

(define (sqrt x)
  (sqrt-iter 1.0 (improve 1.0 x) x))

(define (square x) (* x x))

(sqrt 9)
(sqrt 100)
(sqrt 25)
(square (sqrt .001))
(square (sqrt 1000))