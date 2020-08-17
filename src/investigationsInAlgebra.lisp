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

(defun prj1-2 (num-apples)
  (let* ((cost 0.25)
         (sale-price 0.32)
         (eaten 2)
         (overhead (* num-apples cost))
         (revenue (* sale-price (- num-apples eaten)))
         (profit (- revenue overhead)))
    profit))

(defun fahrenheit-to-celsius (temp)
  (coerce (* (- temp 32) 5/9) 'float))

(defun celsius-to-fahrenheit (temp)
  (coerce (+ 32 (* temp 9/5)) 'float))

(defun fahrenheit-to-newgrade (temp)
  (coerce (+ 100 (* (- temp 32) 13/9)) 'float))
(defun newgrade-to-fahrenheit (temp)
  (coerce (+ 32 (* (- temp 100) 9/13)) 'float))

(defun celsius-to-newgrade (temp)
  (coerce (+ 100 (* temp 13/5)) 'float))
(defun newgrade-to-celsius (temp)
  (coerce (* (- temp 100) 5/13) 'float))

