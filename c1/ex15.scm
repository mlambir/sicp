(define (p) (p)) ; crea una funcion que se ejecuta a si misma (loop infinito recursivo)

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))