; Exercise 1.4
; (load "sicp1.4.scm")

;Observe that our model of evaluation allows for combinations
;whose operators are compound expres- sions. Use this observation
;to describe the behavior of the following procedure:

; + or - are procedures, one will be returned depending if b is greateer than 0.
; This procedure will be executed after the if is evaluated.

(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))

