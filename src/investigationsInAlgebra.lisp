(in-package :investigations-in-algebra)
(defun tab (f start end)
  (cond ((<= start end) 
         (format t "~A~6t. . .~15t~A~%" start (funcall f start))
         (tab f (+ start 1) end))))

(defun surface-area (length width height)
  (* 2 (+ (* length width) 
          (* length height) 
          (* width height))))

(defun digit (n)
  (if (< n 10) 
      n
      (digit (- n 10))))

(defun exp1-1-f (x)
  (- (+ (* x x x) (* 3 x)) 2))

(defun exp1-1-g (x)
  (+ (* 5 x) 7))

(defun exp1-1-s (x)
  (+ (exp1-1-f x) (exp1-1-g x)))

(defun exp1-1-v (x)
  (cond ((< x 9) (exp1-1-f x))
        (t (exp1-1-s x))))

(defun exp1-1-h (x)
  (exp1-1-f (+ x 0.001)))

(defun exp1-1-w (x)
  (exp1-1-f (exp1-1-g x)))

(defun exp1-1-d (x)
  (/ (- (exp1-1-f (+ x 0.001)) (exp1-1-f x)) 0.001))

(defun exp1-1-j (x)
  (exp1-1-h (- x 0.001)))

(defun exp1-1-m (x)
  (+ (* 3 (* x x)) 3))
