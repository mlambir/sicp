; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-largest-squares a b c)
    (cond ((and (> a c) (> b c)) (+ (square a) (square b)))
          ((and (> b a) (> c a)) (+ (square b) (square c)))
          ((and (> a b) (> c b)) (+ (square a) (square c)))))


(sum-largest-squares 1 2 3)
(sum-largest-squares 5 2 3)
(sum-largest-squares 3 4 2)
