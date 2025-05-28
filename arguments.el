(message "%s" (concat "abc" "def"))

(message "Substring: %s" (substring "The quick brown fox jumped." 16 19))

(message "%s" (concat "The " (number-to-string (+ 2 fill-column)) " red foxes."))

(message "--------------------------------")
(message "(+) => %s" (+))
(message "(*) => %s" (*))
(message "--------------------------------")
(message "(+ 3) => %s" (+ 3))
(message "(* 3) => %s" (* 3))
(message "--------------------------------")
(message "(+ 3 4 5) => %s" (+ 3 4 5))
(message "(* 3 4 5) => %s" (* 3 4 5))
(message "--------------------------------")
