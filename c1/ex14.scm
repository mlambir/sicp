(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)) ; devuelve + o - dependiendo de si b es negativo