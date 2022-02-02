#lang racket

; (list.map f lst): F X L -> L
; applies a function to every element of list
(define list.map
  (lambda (f lst)
    (if (null? lst)
        (list)
        (cons (f (car lst)) (list.map f (cdr lst))))))
