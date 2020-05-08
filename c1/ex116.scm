(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))


(define (expt b n) (expt-iter 1 b n))

(define (expt-iter a b n)
    (cond ((= n 0) a)
          ((= n 1) (* b a))
          ((even? n) (expt-iter a (* b b) (/ n 2)))
          (else (expt-iter (* a b) b (- n 1)))))

(expt 2 1)
(expt 2 2)
(expt 2 3)
(expt 2 4)
(expt 2 5)
(expt 2 6) ; 2²x2x2²x2
(expt 2 7)
(expt 2 8)
(expt 2 9)
(expt 2 10)
(fast-expt 2 8)
(expt 2 10)
(fast-expt 2 10)
(expt 5 5)
(fast-expt 5 5)
