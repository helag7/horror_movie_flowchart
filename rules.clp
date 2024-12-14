(defrule ask-age
  =>
  (assert (question (text "Are you over 18 or under 18?") (answers over18 under18))))

(defrule male-or-female
  (age under18)
  =>
  (assert (question (text "Are you male or female?") (answers male female))))