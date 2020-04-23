(define (cubert-iter oldguess guess x)
  (if (good-enough? oldguess guess x)
      guess
      (cubert-iter guess 
                (improve guess x)
                 x)))

(define (improve y x)
  (/  (+ (/ x (square y)) (* 2 y)) 3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? oldguess guess x)
  (< (abs (- guess oldguess)) 0.000001))

(define (cubert x)
  (cubert-iter 1.0 (improve 1.0 x) x))

(define (square x) (* x x))
(define (cube x) (* x x x))


(cubert (cube 2))
(cubert (cube 3))
(cubert (cube 4))
(cubert (cube 5))
(cubert (cube 6))