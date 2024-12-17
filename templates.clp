(deftemplate question
(slot text (type STRING))
(slot fact-name (type SYMBOL))
(multislot answers (type SYMBOL))
(multislot answers-text (type STRING))
)

(deftemplate movie
(slot title (type STRING)))
