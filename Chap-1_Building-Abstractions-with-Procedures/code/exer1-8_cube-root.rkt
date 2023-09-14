#lang sicp
(define (cube-iter guess x)
  (if (good-enough? guess x) 
      guess
      (cube-iter (improve guess x) x)))

(define (improve y x)
  ; note that in the given equation, it is y that corresponds to `guess`
  (/ (+ (/ x (* y y))
        (* 2 y))
     3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.000001))

(define (cube x) (* x x x))

(define (abs x)
  (if (< x 0) (- x)
      x))

(define (cbrt x)
  (cube-iter (/ x 2) x))