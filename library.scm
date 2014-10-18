(define (caar L)
  (car (car L)))

(define (cadr L)
  (car (cdr L)))

(define (cdar L)
  (cdr (car L)))

(define (cddr L)
  (cdr (cdr L)))

(define (caadr L)
  (car (car (cdr L))))

(define (caddr L)
  (car (cdr (cdr L))))

(define (cdadr L)
  (cdr (car (cdr L))))

(define (cadddr L)
  (car (cdr (cdr (cdr L)))))
