#lang scheme

(define buscador
  (lambda (list object)
    (let search ((i 1) (remainder list))
      (cond
        ((null? remainder) -1)
        ((equal? (car remainder) object) i)
        (else (search (+ i 1) (cdr remainder)))))))