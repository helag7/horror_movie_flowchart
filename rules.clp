(defrule ask-age
=>
(assert (question (text "How old are you?") 
(fact-name age) (answers under18 over18))))

(defrule male-or-female
(age under18)
=>
(assert (question (text "Are you male or female?") 
(fact-name gender) (answers male female))))

(defrule frightened-of
(age over18)
=>
(assert (question (text "Are you more frightened of the dead or thw living?") 
(fact-name dead-or-living) (answers living crawl no-devil dead both))))

(defrule is-catholic
(gender male)
=>
(assert (question (text "Are you catholic?") 
(fact-name catholic) (answers yes no))))

(defrule feelings-about-dogs
(dead-or-living living)
=>
(assert (question (text "What are your feelings about dogs, hairy people, or hairy dogs?") 
(fact-name scary-dogs) (answers yes no))))

(defrule how-many-legs
(dead-or-living crawl)
=>
(assert (question (text "How many legs scare you the most?") 
(fact-name legs) (answers eight six other))))

(defrule like-children
(dead-or-living no-devil)
=>
(assert (question (text "Do you like children?") 
(fact-name children) (answers no babies school))))

(defrule have-a-body
(dead-or-living dead)
=>
(assert (question (text "Do you care if they have a body?") 
(fact-name body) (answers yes no))))

(defrule christopher-lee
(dead-or-living both)
=>
(assert (question (text "Christopher Lee is...") 
(fact-name chris) (answers guy legend))))

(defrule is-environmentalist
(scary-dogs yes)
=>
(assert (question (text "Are you an environmentalist?") 
(fact-name environmentalist) (answers no yes))))

(defrule worried-about-intelligence
(scary-dogs no)
=>
(assert (question (text "Are you worried about people with higher intelligence?") 
(fact-name intelligence) (answers no planet lab))))

(defrule did-puberty-suck
(environmentalist no)
=>
(assert (question (text "Did puberty suck?") 
(fact-name puberty-suck) (answers yes no))))

(defrule if-visiting-uk
(puberty-suck no)
=>
(assert (question (text "If visiting the UK, which would you rather do?") 
(fact-name uk) (answers circus castle battlefield))))

(defrule most-worried
(intelligence no)
=>
(assert (question (text "Specifically, i'm most worried...") 
(fact-name worried) (answers sweaters halloween hockey texans nerds children))))

(defrule is-circus-scary
(intelligence planet)
=>
(assert (question (text "Does the circus scare you?") 
(fact-name circus-scary) (answers no not-really))))

(defrule afraid-of-insects
(intelligence lab)
=>
(assert (question (text "Are you afraid of insects?") 
(fact-name insects-scary) (answers yes no))))

(defrule sex-with-heads
(insects-scary no)
=>
(assert (question (text "How do you feel about people having sex with severed re-animated heads?") 
(fact-name sex) (answers love decorum))))

(defrule starring-members-of
(legs eight)
=>
(assert (question (text "I prefer movies starring members of...") 
(fact-name members) (answers star-trek roseanne))))

(defrule pea-soup-again
(children school)
=>
(assert (question (text "Do you ever want to eat pea soup again?") 
(fact-name soup) (answers no yes))))

(defrule could-george-protect
(body no)
=>
(assert (question (text "Could George C. Scott protect you?") 
(fact-name george-protect) (answers yes no))))

(defrule can-dogs-look
(body yes)
=>
(assert (question (text "Can dogs look up?") 
(fact-name dogs-up) (answers yes mail))))

(defrule prefer-vampires
(chris guy)
=>
(assert (question (text "I prefer my vampires...") 
(fact-name vampire) (answers silent eastern hairdo))))

(defrule like-hippies
(chris legend)
=>
(assert (question (text "Do you like hippies?") 
(fact-name hippies) (answers no virgin))))
