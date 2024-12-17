(defrule twilight
(age under18)
(gender female)
=>
(assert (movie (title "Twilight"))))

(defrule killer-nun
(age under18)
(gender male)
(catholic yes)
=>
(assert (movie (title "Killer Nun"))))

(defrule slaughter-hotel
(age under18)
(gender male)
(catholic no)
=>
(assert (movie (title "Slaughter Hotel"))))

(defrule ginger-snaps
(age over18)
(dead-or-living living)
(scary-dogs yes)
(environmentalist no)
(puberty-suck yes)
=>
(assert (movie (title "Ginger Snaps"))))

(defrule american-werewolf
(age over18)
(dead-or-living living)
(scary-dogs yes)
(environmentalist no)
(puberty-suck no)
(uk circus)
=>
(assert (movie (title "An American Werewolf in London"))))

(defrule the-wolf-man
(age over18)
(dead-or-living living)
(scary-dogs yes)
(environmentalist no)
(puberty-suck no)
(uk castle)
=>
(assert (movie (title "The Wolf Man"))))

(defrule dog-soldiers
(age over18)
(dead-or-living living)
(scary-dogs yes)
(environmentalist no)
(puberty-suck no)
(uk battlefield)
=>
(assert (movie (title "Dog Soldiers"))))

(defrule wolfen
(age over18)
(dead-or-living living)
(scary-dogs yes)
(environmentalist yes)
=>
(assert (movie (title "Wolfen"))))

(defrule elm-street
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence no)
(worried sweaters)
=>
(assert (movie (title "A Nightmare on Elm Street"))))

(defrule halloween
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence no)
(worried halloween)
=>
(assert (movie (title "Halloween"))))

(defrule friday-13th
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence no)
(worried hockey)
=>
(assert (movie (title "Friday the 13th"))))

(defrule chainsaw-massacre
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence no)
(worried texans)
=>
(assert (movie (title "The Texas Chainsaw Massacre"))))

(defrule scream
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence no)
(worried nerds)
=>
(assert (movie (title "Scream"))))

(defrule sleepaway-camp
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence no)
(worried children)
=>
(assert (movie (title "Sleepaway Camp"))))

(defrule killer-clowns
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence planet)
(circus-scary no)
=>
(assert (movie (title "Killer Clowns from Outer Space"))))

(defrule alien
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence planet)
(circus-scary not-really)
=>
(assert (movie (title "Alien"))))

(defrule the-fly
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence lab)
(insects-scary yes)
=>
(assert (movie (title "The Fly"))))

(defrule re-animator
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence lab)
(insects-scary no)
(sex love)
=>
(assert (movie (title "Re-Animator"))))

(defrule frankenstein
(age over18)
(dead-or-living living)
(scary-dogs no)
(intelligence lab)
(insects-scary no)
(sex decorum)
=>
(assert (movie (title "Frankenstein"))))

(defrule arachnophobia
(age over18)
(dead-or-living crawl)
(legs eight)
(members roseanne)
=>
(assert (movie (title "Arachnophobia"))))

(defrule kingdom-spiders
(age over18)
(dead-or-living crawl)
(legs eight)
(members star-trek)
=>
(assert (movie (title "Kingdom of the Spiders"))))

(defrule them
(age over18)
(dead-or-living crawl)
(legs six)
=>
(assert (movie (title "Them!"))))

(defrule human-centipede
(age over18)
(dead-or-living crawl)
(legs other)
=>
(assert (movie (title "The Human Centipede"))))

(defrule the-exorcist
(age over18)
(dead-or-living no-devil)
(children school)
(soup no)
=>
(assert (movie (title "The Exorcist"))))

(defrule the-omen
(age over18)
(dead-or-living no-devil)
(children school)
(soup yes)
=>
(assert (movie (title "The Omen"))))

(defrule rosemarys-baby
(age over18)
(dead-or-living no-devil)
(children babies)
=>
(assert (movie (title "Rosemary's Baby"))))

(defrule haxan
(age over18)
(dead-or-living no-devil)
(children no)
=>
(assert (movie (title "Haxan"))))

(defrule the-changeling
(age over18)
(dead-or-living dead)
(body no)
(george-protect yes)
=>
(assert (movie (title "The Changeling"))))

(defrule poltergeist
(age over18)
(dead-or-living dead)
(body no)
(george-protect no)
=>
(assert (movie (title "Poltergeist"))))

(defrule dawn-of-dead
(age over18)
(dead-or-living dead)
(body yes)
(dogs-up mall)
=>
(assert (movie (title "Dawn of the Dead"))))

(defrule shaun-of-dead
(age over18)
(dead-or-living dead)
(body yes)
(dogs-up yes)
=>
(assert (movie (title "Shaun of the Dead"))))

(defrule nosferatu
(age over18)
(dead-or-living both)
(chris guy)
(vampire silent)
=>
(assert (movie (title "Nosferatu"))))

(defrule dracula-1931
(age over18)
(dead-or-living both)
(chris guy)
(vampire eastern)
=>
(assert (movie (title "Dracula (1931)"))))

(defrule dracula-1992
(age over18)
(dead-or-living both)
(chris guy)
(vampire hairdo)
=>
(assert (movie (title "Dracula (1992)"))))

(defrule dracula-1972
(age over18)
(dead-or-living both)
(chris legend)
(hippies no)
=>
(assert (movie (title "Dracula A.D. 1972"))))

(defrule horror-of-dracula
(age over18)
(dead-or-living both)
(chris legend)
(hippies virgin)
=>
(assert (movie (title "The Horror of Dracula"))))
