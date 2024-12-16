(deftemplate question
(slot text (type STRING))
(slot fact-name (type SYMBOL))
(multislot answers (type SYMBOL))
)
