(define (print-move from to)
  (newline)
  (display "From: ")
  (display from)
  (display " To: ")
  (display to))

(define (move-tower size from to extra)
  (cond ((= size 0) 0)
        (else (move-tower (- size 1) from extra to)
              (print-move from to)
              (move-tower (- size 1) extra to from))))

