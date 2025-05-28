
(setq
 name "YawKar"
 age 22
 hobby "languages"
 )

(message "%s;%d;%s" name age hobby)

(setq counter 0)
(setq counter (+ counter 1))
(message "counter: %d" counter)

(defun repeat (n func)
  (if (= n 0)
      nil
    (funcall func)
    (repeat (- n 1) func)))

(repeat 10 (lambda () (message "Another time")))
