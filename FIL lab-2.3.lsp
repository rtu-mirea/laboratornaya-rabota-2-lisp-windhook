(defun comp (lst &optional (c 1))
    (cond
    ((null lst) nil)
    ((eq (car lst) (cadr lst)) (comp (cdr lst) (1+ c)))
    ((> c 1) (cons (cons (car lst) (list c)) (comp (cdr lst))))
    (t (cons (car lst) (comp (cdr lst))))))

(comp '(1 1 0 0 0 0 0 1 0 0 0 0 0 0 )) ;; Вызов функции comp

(defun uncomp (lst &optional (c 0))
    (cond
      ((null lst) nil)
      ((atom (car lst)) (cons (car lst) (uncomp (cdr lst))))
      ((if (< c (cadar lst))
        (cons (caar lst) (uncomp lst (1+ c)))
        (uncomp (cdr lst))))))

(uncomp '((1 2) (0 5) 1 (0 6))) ;; Вызов функции uncomp
