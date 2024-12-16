; pytania

(defrule ask-age
=>
(assert (question (text "How old are you?") 
(answers over18 under18))))

(defrule male-or-female
(age under18)
=>
(assert (question (text "Are you male or female?") 
(answers male female))))

(defrule frightened-of
(age over18)
=>
(assert (question (text "Are you more frightened of the dead or thw living?") 
(answers living crawl no-devil dead both))))

(defrule is-catholic
(gender male)
=>
(assert (question (text "Are you catholic?") (answers yes no))))

(defrule feelings-about-dogs
(dead-or-living living)
=>
(assert (question (text "What are your feelings about dogs, hairy people, or hairy dogs?") 
(answers yes no))))

(defrule how-many-legs
(dead-or-living crawl)
=>
(assert (question (text "How many legs scare you the most?") 
(answers eight six other))))

(defrule like-children
(dead-or-living no-devil)
=>
(assert (question (text "Do you like children?") 
(answers no babies school))))

(defrule have-a-body
(dead-or-living dead)
=>
(assert (question (text "Do you care if they have a body?") 
(answers yes no))))

(defrule christopher-lee
(dead-or-living both)
=>
(assert (question (text "Christopher Lee is...") 
(answers guy legend))))

(defrule is-environmentalist
(scary-dogs yes)
=>
(assert (question (text "Are you an environmentalist?") 
(answers no yes))))

(defrule worried-about-intelligence
(scary-dogs no)
=>
(assert (question (text "Are you worried about people with higher intelligence?") 
(answers no planet lab))))

(defrule did-puberty-suck
(environmentalist no)
=>
(assert (question (text "Did puberty suck?") 
(answers yes no))))

(defrule if-visiting-uk
(puberty-suck no)
=>
(assert (question (text "If visiting the UK, which would you rather do?") 
(answers circus castle battlefield))))

(defrule most-worried
(intelligence no)
=>
(assert (question (text "Specifically, i'm most worried...") 
(answers sweaters halloween hockey texans nerds children))))

(defrule is-circus-scary
(intelligence planet)
=>
(assert (question (text "Does the circus scare you?") 
(answers no not-really))))

(defrule afraid-of-insects
(intelligence lab)
=>
(assert (question (text "Are you afraid of insects?") 
(answers yes no))))

(defrule sex-with-heads
(insects-scary no)
=>
(assert (question (text "How do you feel about people having sex with severed re-animated heads?") 
(answers love decorum))))

(defrule starring-members-of
(legs eight)
=>
(assert (question (text "I prefer movies starring members of...") 
(answers star-trek roseanne))))

(defrule pea-soup-again
(children school)
=>
(assert (question (text "Do you ever want to eat pea soup again?") 
(answers no yes))))

(defrule could-george-protect
(body no)
=>
(assert (question (text "Could George C. Scott protect you?") 
(answers yes no))))

(defrule can-dogs-look
(body yes)
=>
(assert (question (text "Can dogs look up?") 
(answers yes mail))))

(defrule prefer-vampires
(chris guy)
=>
(assert (question (text "I prefer my vampires...") 
(answers silent eastern hairdo))))

(defrule like-hippies
(chris legend)
=>
(assert (question (text "Do you like hippies?") 
(answers no virgin))))
