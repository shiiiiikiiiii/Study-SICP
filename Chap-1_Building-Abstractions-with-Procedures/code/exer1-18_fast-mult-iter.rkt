#lang sicp
; referred online solutions
(define (fast-mult a1 a2)
  (mult-iter a1 a2 0))
  
(define (mult-iter a1 a2 res)
  (cond ((= a2 0) res)
        ((even? a2) (mult-iter (double a1) (halve a2) res))
        (else (mult-iter a1 (- a2 1) (+ a1 res)))))

(define (even? x)
  (= 0 (remainder x 2)))

(define (double x) (+ x x))

(define (halve x) (/ x 2))