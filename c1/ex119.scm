(define (fib n)
  (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p ) (* q q))
                   (+ (* 2 q p) (* q q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

;a=bq + aq + ap
;b=bp + aq

;a=(bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p
;b=(bp + aq)p + (bq + aq + ap)q

;a=bpq + aqq + bqq + aqq + apq + bqp + aqp + app
;b=bpp + aqp + bqq + aqq + apq

;a=2bpq + bqq + 2aqq + 2apq + app 
;b=bpp + bqq + 2aqp + aqq

;b=(pp + qq)b + (2qp + qq)a


(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)
(fib 8)
(fib 9)
(fib 10)
(fib 999)