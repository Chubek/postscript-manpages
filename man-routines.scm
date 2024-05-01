(define (man-bold text)
  (format ".B ~a\n" text))


(display (man-bold "Asss"))
