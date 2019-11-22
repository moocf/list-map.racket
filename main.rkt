#lang racket

; (map f lst): F X L -> L
; applies a function to every element of list
(define map
  (lambda (f lst)
    (if (null? lst)
        (list)
        (cons (f (car lst)) (map f (cdr lst))))))
