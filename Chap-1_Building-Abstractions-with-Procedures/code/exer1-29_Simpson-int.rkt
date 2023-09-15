#lang sicp
(define (sum term a next b)
  (if (> a b) 0
      (+ (term a) (sum term (next a) next b))))

(define (cube x) (* x x x))

(define (s-int f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f(+ a (* k h))))
  ; the following referred to online solutions
  (define (factor k)
        (cond ((or (= k 0) (= k n))
                1)
              ((odd? k)
                4)
              (else
                2)))

  (define (term k)
    (* (factor k) (y k)))

  (define (next k)
    (+ k 1))

  (if (not (even? n)) (error"n cannot be odd")
      (* (/ h 3) (sum term 0.0 next n))))