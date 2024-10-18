INCLUDE Secrets.ink

VAR argument = false



-> Start

=== Start ===

{!Should you intend to take my portraiture for your publication, I must insist you use take it from my left side. It is most uncouth for a lady of status to expose her right cheek to the great unwashed. } #speaker: Theodosia Hold




+[Where were you night of the murder?]

I had retired to my chambers rather early to indulge in a most ladlylike fit of weeping.
You may confer with my maid to confirm this.
->Night_Of_Murder



+[Have you noticed anything suspicious?]

->Suspicions



+[How was your relationship with your husband?]
A most invasive question to ask a freshly made widow, though I shall allow it. I find the outrageous gall of you newspaper men quite charming.
-> Relationship



+ {affair_revealed} [I know about your affair with Maximillian.]
Affair? How perplexing an accusation. And most thrilling. Do go on.
->Affair

+ {divorce_letter} [Did you know your husband was planning to divorce you?]
Oh yes, I intuited as much. A well-bred woman has an instinct for her husband's flights of fancy.
I am quite sure he would have abandoned the idea entirely, had he not perished.
->Divorce



+ {test_secret} [Do you know Ms. Ditch and Ms. Treadwell are in a relationship?]
The maid and the stable hand? Ensnared in a Sapphic scandal? How curious! How queer! How modern!
Really, if the lower orders cannot set us a good example, what on earth is the use of them?
->Start




+[<i> Examine the suspect. </i>]
->Examination



+[Leave]
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
Ah, a wonderful day. My dear mother informed me that I was to be married to the Admiral Hold, and that I would be permitted five minutes of polite conversation with him that evening.
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
->Start 

  



===Suspicions===

+[Has anyone in the house been acting strange?]
I have always found one Ms. Lavender Ditch to be a most unusual character. Her manner is most sullen, and one cannot help but question the morals of a woman who elects to spend her days mucking about in a stables.
I requested Charles release her from her duties several times. Alas, men of Charles' calibre are often dodddering when expedition is required and far too quick to finish when strenuous labour would be of benefit.
One does hope you will make note of these pithy observations of mine in your publication.
->Suspicions

+[Did you notice anything unusual about the body?]
One cannot help but notice the dramatic position in which my dear husband chose to die. A true testament to his character. Only one of immaculate breeding such as Charles would succumb to rigor morits in such a statuesque pose.
->Suspicions

+[Did your husband have any enemies?]
Charles was fond of all peoples and creatures under the sun.
Barring the Irish. He loathed the Irish.
-> Suspicions

+[Let's talk about something else]
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



+{test_secret} [But you were sleeping with his brother!]
And we can be most certain that Charles had a litany of his own lovers and companions, as is the case with most men of his rank.
It is entirely appropriate for a lady in such a situation to find herself a discrete companion of her own.
Charles understood this, one is quite sure. Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider.
He would have come to this realisation himself. I am quite sure he would.
->Start

+[Let's talk about something else]
->Start


===Affair===

+[I spoke to Lavender. She told what she saw, and there's evidence to back it up.]
Ah, I see.
->Affair_Cont

+{kiss_mark and lipstick}[Your lipstick matches the mark on Maximillian's neck.]

->Affair_Cont

+[You accidentally swapped gloves with Max when Lavender spotted you in the stables.]
One always feared this day would come. You are correct sir. My hands are unseemly large- manlike, one might say.
One presumes this great scandal shall be gracing your front page? I only pray you note my widowed status so as to soften the blow this shall have upon my reputation.
++[No, not your hands! You're sleeping with your husband's brother!]
Ah. That? Yes, I suppose. 
->Affair_Cont


=Affair_Cont
 You see, in marrying a older man, I was rather assured to be made a dowager. Maximillian, being vividly aware of how unfashionable a title that is for a woman in her prime, merely suggested we marry upon my late husband's inevitable demise to avoid such a garish moniker, an offer one firmly accepted. And seeing as our eventual marriage was quite assured, Maximillian merely suggested we rehearse our conjugal duties in advance, so to speak.
 Maximillian is a most foreward-looking man, you see. Much like his brother in that regard.
+[Are you trying to justify an affair with your brother-in-law?]
One would hardly call such a liaison an affair. Charles had a litany of his own lovers and companions, as is the case with most men of his rank.
It is entirely appropriate for a lady of my rank to source a discrete companion of her own.
Charles understood this, one is quite sure. Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider.



->DONE






