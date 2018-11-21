(define (sqrt x)
  (the y (and (>= y 0)
              (= (square y) x))))

(define (average x y)
    (/(+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0000000001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
                x)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
  (else else-clause)))