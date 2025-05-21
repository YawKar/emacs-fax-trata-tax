(setq debug t)

(defun pass-or-not (age)
  (if (>= age 18)
      "You are welcome!"
    (if debug (message "age: %d < 18" age) nil)
    "Go away, kiddo!"))

(message "--------------")
(message (pass-or-not 17))
(message "--------------")
(message (pass-or-not 18))
(message "--------------")

(let ((name "YawKar")
      (age 22)
      (hobby "purity, reproducibility"))
  (message "Name:\t\t%s" name)
  (message "Age:\t\t%d" age)
  (message "Hobby: \t\t%s" hobby))

(message "--------------")

(let* ((name "YawKar")
       (surname "Monad")
       (fullname (concat name " " surname)))
  (message "Fullname: %s" fullname))

(message "--------------")

(let ((result (progn
		(message "Message 1")
		(message "Let it go")
		(message "Just get in")
		(message "There's a beauty in the breakdown")
		"return value is the last one")))
  (message "Result: %s" result))

(message "--------------")

(let ((result (prog1
		"return value is the first one"
		(message "Message 2")
		(message "Message 3"))))
  (message "Result: %s" result))

(message "--------------")

(let ((result (when t
  (message "t is true")
  (message "now below is the result")
  "resulting value")))
  (message "Result: %s" result))

(message "--------------")

(let ((result (unless nil
		(message "unless is triggered on nil")
		(message "now return the result")
		42)))
  (message "Result: %d" result))

(message "--------------")

(cond
 (nil (message "It is nil"))
 ((stringp "blah") (message "It is a string")))

(message "--------------")

(if (and 1 2 3 t "string")
    (message "all of 'em are truthy")
    (message "some of them is falsy"))

(if (and 1 2 3 nil "string")
    (message "all of 'em are truthy")
    (message "some of them is falsy"))

(message "--------------")

(if (or nil nil (message "Hey"))
    (message "some of them is truthy")
    (message "all of them are falsy"))

(if (or nil nil nil nil)
    (message "some of them is truthy")
    (message "all of them are falsy"))

(message "--------------")

(message (or nil nil "or returns the truthy"))

(message "--------------")

;; it is t because it uses semantics
(message "(equal \"shn\" \"shn\") is %s" (equal "shn" "shn"))
;; it is nil because "shn" and "shn" are 2 differenc _objects_
(message "(eq \"shn\" \"shn\") is %s" (eq "shn" "shn"))

(message "%s" (string= "first" "first"))

(message "--------------")

(defun type-guesser (value)
  (cond
   ((stringp value) (message "It is a string"))
   ((numberp value) (message "It is a number"))
   ((listp value) (message "It is a list"))))

(type-guesser 123)
(type-guesser "123")
(type-guesser '(1 2 3))

(message "--------------")

(message "%s" (type-of "string"))
(message "%s" (type-of '(1 2 3)))
(message "%s" (type-of t))
(message "%s" (type-of nil))
(message "%s" (type-of 1.12))
(message "%s" (type-of 123))
(message "%s" (type-of 'type-of))
