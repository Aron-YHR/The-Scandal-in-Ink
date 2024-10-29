INCLUDE Secrets.ink

VAR argument = false

->INTRO
===INTRO===
-> Start

=== Start ===

{TURNS_SINCE(-> INTRO) == 0: Should you intend to take my portraiture for your publication, I must insist you use take it from my left side. It is most uncouth for a lady of status to expose her right cheek to the great unwashed.} #speaker: Theodosia Hold




+[Where were you night of the murder?]

I had retired to my chambers rather early to indulge in a most ladlylike fit of weeping.
You may confer with my maid to confirm this.
->Night_Of_Murder



+[Have you noticed anything suspicious?]
Such as?
->Suspicions



+[How was your relationship with your husband?]
A most invasive question to ask a freshly made widow, though I shall allow it. I find the outrageous gall of you newspaper men quite charming.
-> Relationship



*{affair_revealed} [I know about your affair with Maximillian.]
Affair? With Maximillian? How perplexing and baseless an accusation. And most thrilling. Do go on.
->Affair

*{divorce_petition}[Did you know your husband was planning to divorce you?]
Oh yes, I intuited as much. A well-bred woman has an instinct for her husband's flights of fancy.
I am quite sure he would have abandoned the idea entirely, had he not perished.
->Divorce



+[<i> Examine the suspect. </i>]
<i>You examine Theodosia more closely.</i>
->Examination



+[Leave.]
->DONE



=== Relationship ===

+[Was Charles a good husband?]
Charles performed his marital duties adequately. He provided a modest dwelling-place, a small allowance to keep me adorned in the most recent fashions, and rarely spoke. A most desirable quality in a husband. He also begot a male heir. A most sensible decision on his part. Eldest daughters are somewhat vulgar, wouldn't you agree?
-> Eldest_Daughter

+[Did you love Charles?]
Certainly <i>not</i>! 
The exchange of love tokens and flowery letters is acceptable during courtship. Perhaps even for the first six weeks of a marriage. However, love between spouses of any greater duration is exceptionally garish. 
For a wife of my tenure to express affection, would risk being mistaken for a prostitute, or a mistress of particularly poor breeding.
->Relationship

+[You don't seem particularly sad that Charles is dead.]
Do you expect keening and caterwauling of me, sir? Do you mistake me some sort of Irishman?
A widow must be demure in the face of death. It is one's duty to maintain the dignity of the family name, as it was Charles' duty to provide for our family. He did the latter relatively adequately in life and continues to do so in the face of death. I must do the same.
->Relationship

+[Tell me about how you two met.]
Ah, a wonderful day. My dear mother informed me that a cousin of mine was searching for a wife of good breeding, and that my father had suggested me as an appropriate match. That cousin was the late Admiral Hold. I was permitted five minutes of polite conversation with him that very evening. Two weeks later, we were wed.
It was quite perfect. Exactly as I had imagined it as a young girl.
->Relationship

+[Let's talk about something else]
->Start

=Eldest_Daughter

+[My eldest child is a girl.]
My deepest sympathies. 
->Relationship

+[That's horrendous. I love my daughter with all my heart!]
Expressing parental affection in such a flagrant manner? And in public no less! How quaint! The eccentricities of the common rabble never cease to amaze.
-> Relationship

+[Let's move on.]
->Relationship



=== Night_Of_Murder ===


+[Why were you crying?]
I was engaged in vigorous conversation with my husband Charles. This was before he died, you see.
I do believe the conversation overwhelmed my feminine sensibilities and drove me to tears. A foolish decision on my part to engage in such activity. It is most harmful to a lady's health to engage in any activity which can be considered <i>vigorous</i>.
~argument = true
->Night_Of_Murder

+{argument}[What were you and Charles arguing about?]
Oh, matters of a marital nature. Such was the banality of our conversation that I was driven to tears. Entirely too dull for publication, I assure you.
->Night_Of_Murder

+[Why should I confer with your maid?]
Ms. Tendwell was present as I was leaving Charles'  study. One must admit, she performed her duties most admirably. She escorted me to my chambers and went to her own quarters upon my request. Crying in front of one's staff should be avoided at all cost. It is terribly European.
->Night_Of_Murder

+[How did you discover the body?]
Ms. Tendwell interrupted my private weeping to inform me that Charles had been slain. It is terribly inappropriate to interrupt one's private weeping. However, given the occassion, I believe Ms. Tendwell acted appropriately.
->Night_Of_Murder

+[Did you hear anything that night?]
I do believe I heard some unusual sounds emanating from Ms. Tendwell's room, as I have heard on several nights past. I generally disapprove of serving girls creating noise. However, Ms. Tendwell's performance is quite satisfactory, so I have elected to overlook this indiscretion.
->Night_Of_Murder


+[Let's talk about something else.]
Excessive talking is a terrible vulgarity, but for the sake of your paper, I shall indulge just this once.
->Start 

  



===Suspicions===

+[Has anyone in the house been acting strange?]
I have always found one Ms. Lavender Ditch to be a most unusual character. Her manner is most sullen, and one cannot help but question the morals of a woman who elects to spend her days mucking about in a stables.
I requested Charles release her from her duties several times. Alas, men of Charles' calibre are often dodddering when expedition is required and far too quick to finish when strenuous labour would be of benefit.
That was rather clever. One does hope you will make note of these pithy observations of mine in your publication.
->Suspicions

+[Did you notice anything unusual about the body?]
One cannot help but notice the dramatic position in which my dear husband chose to die. A true testament to his character. Only one of immaculate breeding such as Charles would succumb to rigor morits in such a statuesque pose.
->Suspicions

+[Did your husband have any enemies?]
Charles was fond of all peoples and creatures under the sun.
Barring the Irish. He loathed the Irish.
-> Suspicions

+[Let's talk about something else.]
->Start


===Examination===

+[Examine her hands.]
<i> Her gloves are a pristine white. You notice that they are monogrammed. They bear the initials "M.H".</i>
->Examination

+[Examine her face]
<i> Her face is well painted, but not garishly so. Her lipstick is a dull rouge.</i>
-> Examination

+[Examine her clothing]
<i> Her attire is undeniably stylish. She's the best dressed widow you've ever seen. </i>
-> Examination

+[Return to the conversation]
->Start


===Divorce===



+{affair_revealed} [But you were sleeping with his brother!]
And we can be most certain that Charles had a litany of his own lovers and companions, as is the case with most men of his rank.
It is entirely appropriate for a lady in such a situation to find herself a discrete companion of her own.
Charles understood this, one is quite sure. Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider.
He would have come to this realisation himself. One is quite sure.
->Start


+{not affair_revealed}[He accuses you of adultery in the letter. Were you unfaithful to Charles]
Of course not. That is not to say that Charles was acting unreasonably, however. It is most appropriate for men of Charles' stature to indulge in extreme paranoia. Such neuroticism is a clear sign of an active, educated mind.
Unless the sufferer is impoverished. Neuroticism amongst the poor is a clear sign of insanity.
->Start









===Affair===

+{lavender_confession}[I spoke to Lavender. She told what she saw, and there's evidence to back it up.]
Ah, I see. So the stable girl has betrayed me. 
I should have let Charles dismiss her when he first discovered her predilections.
I objected, of course. I found the entire revelation terribly scandalous. And really, if the lower orders cannot provide us with some entertainment, what on earth is the use of them?
Alas, it is a lesson learned. One can simply not trust a woman who elects to work with horses.
->Affair_Cont

+{kiss_mark and lipstick}[Your lipstick matches the mark on Maximillian's neck.]
Ah. I see. Quite the deduction.
->Affair_Cont



+[Why else would you be wearing another man's gloves?]
...
One always feared this day would come. My greatest shame, brought forth into the cold light of day.
You are correct sir. My hands are... unseemly large- manlike, one might say. Even my late husband's gnarled fingers were daintier than mine. I am cursed with- mannish hands.
<i>Oh!</i> To even say it aloud- I feel faint!
Sir, you must understand- this information you have ascertained- if it were to become public knowledge- it would ruin me.
I offer you a bargain- I shall tell you the truth of the relationship myself and Maximillian.
But I must insist that in return, the knowledge you hold regarding my- affliction- you must take that to your grave.
->Hands_Gag


=Hands_Gag

+[Nobody cares about your hands! Tell me about the affair!]
I will take that as an implicit agreement to the terms.
->Affair_Cont

+[I accept.]
Very well. The bargain is struck.
->Affair_Cont


=Affair_Cont
~theodosia_confession = true
~ unlockStatement("Theodosia_Hold",3)
Now, regarding my connection to Maximillian. I'm afraid you have entirely misunderstood our relation.
 You see, in marrying a older man, I was rather assured to eventually be widowed, much as I am now. 
 Maximillian, being vividly aware of how unfashionable widows are at present, merely offered me his hand upon my late husband's inevitable demise to spare me taking the rather garish title of <i>dowager</i>, an offer one did firmly accept. 
 And seeing as our eventual marriage was quite assured, Maximillian then suggested we rehearse our conjugal duties, so to speak. Several times.
 Maximillian is a most foreward-looking man, you see. Much like his brother in that regard.
 So you see, one could hardly call a dalliance such as ours an affair.
 
 +[Sounds entirely reasonable.]
But of course. I am a most reasonable woman.
++[I need to think about what all this means.] 
->Affair_End
 
 +[I have the same arrangement with my brother-in-law.]
How curious. And terribly fashionable, I may add.
++[I need to think about what all this means.] 
->Affair_End
 
+[Have you no shame? You had an affair with your husband's brother!]
One would hardly call such a liaison an affair. Charles had a litany of his own lovers and companions, as is the case with most men of his rank.
It is entirely appropriate for a lady of my rank to source a discrete companion of her own.
Charles understood this, one is quite sure. Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider than matters of the flesh.
++[I need to think about what all this means.]
->Affair_End





=Affair_End
A moment of your time before you go, sir. While not quite as scandalous as, say, a particularly manlike set of hands, one must admit that in certain uneducated circles, arrangements such as mine and Max's can be seen as somewhat- immoral.
That is to say, the revelation of this information could pose- difficulties for me.
Therefore I would appreciate it if you would keep this matter out of your paper.

+[I will, but it'll cost you.]
Do you expect me to carry <i>loose coins</i> upon my person, sir? Like some sort of common <i>prostitute</i>?!
A woman of proper breeding possesses no assets. Her home, wealth, and children are entiely the property of her husband.
I see now that you simply do not understand how civilised society operates. 
Publish the details of my personal life if you must. But I insist that my portraiture emphasises my rounded chin. It is an indicator of exceptionally thorough breeding.
->Start




+[Don't worry, I'll keep this quiet.]
A most sensible decision. Inter-familial dalliances have become so throughly dull of late. I am quite sure your readership would have little interest in mine.
->Start


+[Sorry, this is going on the front page!]
Very well. But I must insist that my portraiture emphasises my rounded chin. It is an indicator of exceptionally thorough breeding.
->Start


+[I'll need to think about it.]
Very well. One sincerely hopes you make the well-bred decision.
->Start









