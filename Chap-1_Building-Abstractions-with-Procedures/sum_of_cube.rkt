#lang sicp

;modify the square function in the textbook to cube function

(define (cube x) (* x x x))

(define (sum_of_cube x y)
  (+ (cube x) (cube y)))

(sum_of_cube 10 20)