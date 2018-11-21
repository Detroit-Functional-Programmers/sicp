(define (cube x) (* x x x))

(define (improve  guess x)
    (/ ( + (* 2 guess) (/ x (* guess guess)) ) 3 ))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.0001))


(define (crt x)
    (crt-iter 1.0 x))

(define (crt-iter guess x)
    (if (good-enough? guess x)
    guess
    (crt-iter (improve guess x)
                x)))