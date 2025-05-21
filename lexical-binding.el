;; 
(defun b ()
  aaa)

(message "%s"
	 (let ((aaa 300))
	   (b)))
