(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


(A 1 10)
;Value: 1024
(A 2 4)
;Value: 65536
(A 3 3)
;Value: 65536

(define (f n) (A 0 n))
; (n -> 2n)
; (f 2) 
; (f 10)

(define (g n) (A 1 n))
; A(1, n)
; A(1-1, A(1, n-1))
; A(0, A(1, n-1))
; 2 * A(1, n-1) hasta que n == 1 => 2

; (n -> 2^n)
(g 1) ;2
(g 2) ;4
(g 3) ;8
(g 4) ;16

(define (h n) (A 2 n))
; A(2, n)
; A(1, A(2, n - 1))
; 2^A(2, n-1)
; 2^2^A(2, n-2) hasta que n == 1 => 2

;A(2, 3)
;2^A(2, 2)
;2^2^A(2, 1)
;2^2^2


(h 1)
(h 2)
(h 3)
(h 4)

(define (k n) (* 5 n n))
; (n -> 5n^2)