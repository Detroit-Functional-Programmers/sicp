(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))


(define (foo x y z)
  (cond ((and (>= z x) (>= y x)) (sum-of-squares z y))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))
        ((and (>= y z) (>= x z)) (sum-of-squares y x)))
