#lang sicp

; modify the square function in the textbook to cube function

(define (cube x) (* x x x))

(define (sum-of-cube x y)
  (+ (cube x) (cube y)))

(sum-of-cube 10 20)