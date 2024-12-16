(defrule ask-age
=>
(assert (question (text "How old are you?") 
(fact-name age) (answers under18 over18)
(answers-text "Under 18" "Over 18"))))

(defrule male-or-female
(age under18)
=>
(assert (question (text "Are you male or female?") 
(fact-name gender) (answers male female)
(answers-text "Male" "Female"))))

(defrule frightened-of
(age over18)
=>
(assert (question (text "Are you more frightened of the dead or thw living?") 
(fact-name dead-or-living) (answers living crawl no-devil dead both)
(answers-text "Have you seen the news lately? The living, no matter what planet they're from"
"Things that crawl scare me more than anyting else" "I'm frightened of the dead"
"I'm most afraid of anything that's a little bit of both"))))

(defrule is-catholic
(gender male)
=>
(assert (question (text "Are you catholic?") 
(fact-name catholic) (answers yes no)
(answers-text "Yes" "No"))))

(defrule feelings-about-dogs
(dead-or-living living)
=>
(assert (question (text "What are your feelings about dogs, hairy people, or hairy dogs?") 
(fact-name scary-dogs) (answers yes no)
(answers-text "I poop my pants every time I smell Alpo"
"Dogs and/or bearded guys are cool with me"))))

(defrule how-many-legs
(dead-or-living crawl)
=>
(assert (question (text "How many legs scare you the most?") 
(fact-name legs) (answers eight six other)
(answers-text "Eight" "Six" "Other"))))

(defrule like-children
(dead-or-living no-devil)
=>
(assert (question (text "Do you like children?") 
(fact-name children) (answers no yes)
(answers-text "No" 
"I love the cute little buggers! Especially when they're..."))))

(defrule like-children2
(children yes)
=>
(assert (question (text "I love the cute little buggers! Especially when they're...") 
(fact-name children) (answers babies school)
(answers-text "babies" "in grade school"))))

(defrule have-a-body
(dead-or-living dead)
=>
(assert (question (text "Do you care if they have a body?") 
(fact-name body) (answers yes no)
(answers-text "Yes. Bodies are how thry eat your brains"
"Without a body is scarier"))))

(defrule christopher-lee
(dead-or-living both)
=>
(assert (question (text "Christopher Lee is...") 
(fact-name chris) (answers guy legend)
(answers-text "That guy who played Count Dooku" "a legend"))))

(defrule is-environmentalist
(scary-dogs yes)
=>
(assert (question (text "Are you an environmentalist?") 
(fact-name environmentalist) (answers no yes)
(answers-text "Meh. I do my part but don't go nuts" "Every day is Earth Day"))))

(defrule worried-about-intelligence
(scary-dogs no)
=>
(assert (question (text "Are you worried about people with higher intelligence?") 
(fact-name intelligence) (answers no yes)
(answers-text "Not really. Murderous maniacs, on the other hand..."
"Definitely. Especially when they're..."))))

(defrule worried-about-intelligence2
(intelligence yes)
=>
(assert (question (text "Definitely. Especially when they're...") 
(fact-name intelligence) (answers planet lab)
(answers-text "from another planet" "working in a lab"))))

(defrule did-puberty-suck
(environmentalist no)
=>
(assert (question (text "Did puberty suck?") 
(fact-name puberty-suck) (answers yes no)
(answers-text "Yes" "It wasn't so bad"))))

(defrule if-visiting-uk
(puberty-suck no)
=>
(assert (question (text "If visiting the UK, which would you rather do?") 
(fact-name uk) (answers circus country)
(answers-text "Picadilly Circus, maybe an adult movie theater"
"Visit a countryside..."))))

(defrule if-visiting-uk2
(uk country)
=>
(assert (question (text "Visit a countryside...") 
(fact-name uk) (answers castle battlefield)
(answers-text "castle" "battlefield"))))

(defrule most-worried
(intelligence no)
=>
(assert (question (text "Specifically, i'm most worried...") 
(fact-name worried) (answers sweaters halloween hockey texans nerds children)
(answers-text "of people in sweaters" "of people who take Halloween too seriously"
"of overzealous hockey fans" "about Texans" "of movie nerds"
"of vicious androgynous children"))))

(defrule is-circus-scary
(intelligence planet)
=>
(assert (question (text "Does the circus scare you?") 
(fact-name circus-scary) (answers no not-really)
(answers-text "Where clowns live? Are you crazy? No." "Not really"))))

(defrule afraid-of-insects
(intelligence lab)
=>
(assert (question (text "Are you afraid of insects?") 
(fact-name insects-scary) (answers yes no)
(answers-text "I hate them" "Things I swat with my hand? No"))))

(defrule sex-with-heads
(insects-scary no)
=>
(assert (question (text "How do you feel about people having sex with severed re-animated heads?") 
(fact-name sex) (answers love decorum)
(answers-text "I love seeing people do that thing you just said!"
"We're talking about corpses. Show a little decorum"))))

(defrule starring-members-of
(legs eight)
=>
(assert (question (text "I prefer movies starring members of...") 
(fact-name members) (answers star-trek roseanne)
(answers-text "The cast of Star Trek" "The cast of Roseanne"))))

(defrule pea-soup-again
(children school)
=>
(assert (question (text "Do you ever want to eat pea soup again?") 
(fact-name soup) (answers no yes)
(answers-text "Who cares?" "Yes, I love pea soup"))))

(defrule could-george-protect
(body no)
=>
(assert (question (text "Could George C. Scott protect you?") 
(fact-name george-protect) (answers yes no)
(answers-text "Yes" "No"))))

(defrule can-dogs-look
(body yes)
=>
(assert (question (text "Can dogs look up?") 
(fact-name dogs-up) (answers yes mall)
(answers-text "Yes" "What's all this talk of dogs? Let's go to the mall"))))

(defrule prefer-vampires
(chris guy)
=>
(assert (question (text "I prefer my vampires...") 
(fact-name vampire) (answers silent eastern hairdo)
(answers-text "Silent" "Eastern European" "with a big beehive hairdo"))))

(defrule like-hippies
(chris legend)
=>
(assert (question (text "Do you like hippies?") 
(fact-name hippies) (answers no virgin)
(answers-text "No" "The real terror is 19th century virginal women"))))
