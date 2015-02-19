; Exercise 1.5
; (load "sicp1.5.scm")

; What behavior will Ben observe with an interpreter that uses 
; applicative-order evaluation? What behavior will he observe
; with an interpreter that uses normal-order evaluation?

; Applicative will lead to an infinite loop because y will constantly
; resolve to (p). In normal order y will not be evaluated until it is required.
; It will return 0.

(define (p) (p)) (define (test x y)
(if (= x 0) 0 y))

(test 0 (p))



