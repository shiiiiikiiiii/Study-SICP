#lang sicp
(define (fast-mult a1 a2)
  (cond((= a2 1) a1)
       ((even? a2) (fast-mult (double a1) (halve a2)))
       (else (+ (fast-mult a1 (- a2 1)) a1))))

(define (even? x)
  (= 0 (remainder x 2)))

(define (double x) (+ x x))

(define (halve x) (/ x 2))