#lang sicp
; failed to think on my self
; should not think from large numbers to small ones, but to think reversely
(define (f n)
    (f-iter 2 1 0 0 n))

(define (f-iter a b c i n)
    (if (= i (- n 3))
        (+ a (* 2 b) (* 3 c))
        (f-iter (+ a (* 2 b) (* 3 c))   ; new a
                a                       ; new b
                b                       ; new c
                (+ i 1)
                n)))