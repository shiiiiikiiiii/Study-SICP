#lang sicp
(define (pasc-tri row col)
  (if(or (= col 1) (= row col)) 1
     (+ (pasc-tri (- row 1) (- col 1)) (pasc-tri (- row 1) col))))