(defun test1 ()
  "Test function"
  (+ 1 2)
  (message "Test Function was called")
  4)

(message "%s" (+ 1 (test1)))
