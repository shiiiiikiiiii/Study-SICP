#lang sicp
(define (larger-2-in-3 x y z)
  (cond ((and (< z x) (< z y)) (+ x y))
        ((and (< y x) (< y z)) (+ x z))
        (else (+ y z))))

(larger-2-in-3 1 2 3)