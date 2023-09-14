#lang sicp
(define (abs x)
  ; for (- x), here must be blanks between '-' and 'x', and must in ()
  ; the keyword "cond" actually means multiple conditions
  (cond ((< x 0) (- x))
        ; for (x), here both "(x)" or "x" is OK
        (else (x))))