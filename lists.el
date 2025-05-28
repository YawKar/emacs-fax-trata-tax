(setq x1 (cons 'head 'tail)) ;; cons cell

(car x1)
(cdr x1)

'(head . tail) ;; cons cell
(cons 2 nil)
(cons 1 (cons 2 (cons 3 x1)))
(car (cons x1 1))
(cdr (cons x1 1))
(cons (cons 1 (cons x1 1)) nil)

(car '(1 2 3))
(car (list 1 2 3))
(car nil)
(cdr nil)

(setq x2 '(1 2 3))
(add-to-list 'x2 1)
(add-to-list 'x2 4)

(message "%s" x2)

(push 1 x2)
(pop x2)

(setq x3 '(1 z 2 3 2))
(member 'a x3)
(member 'z x3)
(member 2 x3)
