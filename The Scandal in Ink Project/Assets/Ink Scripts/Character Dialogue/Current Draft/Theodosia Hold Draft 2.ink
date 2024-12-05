//SOME RE-WRITES NEEDED - SPECIFICALLY FOR THE AFFAIR

INCLUDE Secrets.ink



->INTRO
===INTRO===
#speaker: Theodosia Hold #portrait:theladyneutral
-> Start

=== Start ===

{TURNS_SINCE(-> INTRO) == 0: {met_theodosia:Good day.|Should you intend to take my portraiture for your publication, I must insist you use take it from my left side. It is most uncouth for a lady of status to expose her right cheek to the great unwashed.}} 

~met_theodosia = true

+[Where were you night of the murder?]

I had retired to my chambers rather early to indulge in a most ladlylike fit of weeping.
You may confer with my maid to confirm this.->Night_Of_Murder



+[Have you noticed anything suspicious?]
Such as?->Suspicions



+[How was your relationship with your husband?]
#portait:theladypositive
A most invasive question to ask a freshly made widow, though I shall allow it. I find the outrageous gall of you newspaper men quite charming. -> Relationship

*{maximillians_gloves}[Why are you wearing Maximillian's gloves?]
#speaker: Theodosia Hold #portrait:theladyneutral
Good sir, I was quite unaware I was doing so.
~unlockStatement("Theodosia_Hold", 7)
I have been wearing these exact same gloves all of today and yesterday, by my recollection.
->Start

*{(affair_revealed or theodosias_pants or (pink_lipstick_smudge and pink_lipstick)) and (not theodosia_confession)} [I know about your affair with Maximillian.]

Affair? With Maximillian? How perplexing and baseless an accusation. #speaker: Theodosia Hold #portrait:theladyshock
->Affair

*{divorce_petition or burnt_letter}[Did you know your husband was planning to divorce you?]
Oh yes, I intuited as much. A well-bred woman has an instinct for her husband's flights of fancy. #speaker: Theodosia Hold #portrait:theladyneutral
I am quite sure he would have abandoned the idea entirely, had he not perished. ->Divorce

*{ankle_letter and affair_revealed and theodosia_confession}[How did you find out about Lavender & Dorothy's relationship?]
#speaker: Theodosia Hold #portrait:theladynegative
Well it was rather obvious. The foolish girls were stuffing their ridiculous love letters into every free orifice in the manor.
They are unaware I am sure of how unfashionable literate women are at present. 
Charles wanted to dismiss them upon my informing him, but I convinced him otherwise.
I found the notion of a dalliance between two servant girls highly scandalous- and terribly entertaining. #portrait:theladyneutral
And really, if the lower orders cannot provide us with entertainment, what on earth is the use of them? ->Start


+[It was you! You killed the Admiral!]
Murder my husand? #speaker: Theodosia Hold #portrait:theladyshock
I know it has become quite fashionble in France to murder one's husband, but it is <i>hardly</i> the done thing here, sir. #portrait:theladynegative
What could have possibly brought you to such a conclusion?->Accuse

+[<i> Examine the suspect. </i>]
<i>You examine Theodosia more closely.</i> ->Examination



+[<i>Leave.</i>]
->DONE



=== Relationship ===

+[Was Charles a good husband?]
Charles performed his marital duties adequately. He provided a modest dwelling-place, a small allowance to keep me adorned in the most recent fashions, and rarely spoke. A most desirable quality in a husband. #portrait:theladyneutral
He also begot a male heir. A most sensible decision on his part. Eldest daughters are somewhat undesirable at present, wouldn't you agree?
-> Eldest_Daughter

+[Did you love Charles?]
Certainly <i>not</i>! #portrait:theladynegative
The exchange of love tokens and flowery letters is acceptable during courtship. Perhaps even for the first six weeks of a marriage. However, love between spouses of any greater duration is exceptionally garish. 
For a wife of my tenure to express affection? I would risk being mistaken for a prostitute, or a mistress of <i>particularly</i> poor breeding!
->Relationship

+[You don't seem particularly sad that Charles is dead.]
Do you expect keening and caterwauling of me, sir? Do you mistake me for a <i>Spaniard</i>? #portrait:theladynegative
A widow must be demure in the face of death. #portrait:theladyneutral
It is one's duty to maintain the dignity of the family name, as it was Charles' duty to provide for our family. He did the latter relatively adequately in life and continues to do so in the face of death. I must do the same.
->Relationship

+[Tell me about how you two met.]
Ah, a wonderful day. My dear mother informed me that a cousin of mine was searching for a wife of good breeding, and that my father had suggested me as an appropriate match. #portait:theladypositive
That cousin was the late Admiral Hold. I was permitted five minutes of polite conversation with him that very evening. 
Two weeks later, we were wed.
It was quite perfect. Exactly as I had imagined it as a young girl. ->Relationship

+[Let's talk about something else.]
#portrait:theladyneutral
Very well. ->Start

=Eldest_Daughter

+[My eldest child is a girl.]
#portrait:theladyneutral
My deepest sympathies.  ->Relationship

+[That's horrendous. I love my daughter with all my heart!]
Expressing parental affection in such a flagrant manner? And in public no less! #portrait:theladyshock
#portrait:theladypositive
How quaint! The eccentricities of the common rabble never cease to amaze. -> Relationship

+[Yeah, my daughter sucks!]
#portrait:theladyneutral
Yes, that is the general consensus regarding eldest girls. ->Relationship

+[Let's move on.]
#portrait:theladyneutral
Indeed. ->Relationship



=== Night_Of_Murder ===


+[Why were you crying?]
#portrait:theladyneutral
I was engaged in a dispute with my husband Charles yesterday evening. A rather vigorous dispute. This was before he was dead, you see.
~ unlockStatement("Theodosia_Hold", 1)
~argument = true
A foolish decision on my part to engage in such a discussion. It is most harmful to a lady's health to engage in any activity which can be considered <i>vigorous</i>.

->Night_Of_Murder

+{argument}[What were you and Charles arguing about?]
#portrait:theladyneutral
Oh, matters of a marital nature. Entirely too dull for publication, I assure you. ->Night_Of_Murder

+[Why should I confer with your maid?]
#portrait:theladyneutral
Dorothy escorted me to my room following my dispute with Charles, and that is where I remained thereafter. Ms. Tendwell will confirm this, I am sure.
One must admit, she performed her duties most admirably. She escorted me to my chambers so that I could weep in private.
Crying in front of one's staff should be avoided at all cost. It is terribly European. ->Night_Of_Murder

+[How did you discover the body?]
Ms. Tendwell interrupted my private weeping to inform me that Charles had been slain. #portrait:theladyneutral
~unlockStatement("Theodosia_Hold", 2)
She then escorted me to the study. Avery was already in situ, and bawling rather garishly, I might add.
My brother-in-law Maximillian arrived some time after that, looking terribly bedraggled by his standards.
The stable girl was not present. ->Night_Of_Murder

+[Did you hear anything that night?]
I do believe I heard some unusual sounds emanating from Ms. Tendwell's room, as I have heard several nights past. 
~unlockStatement("Theodosia_Hold", 3)
I generally disapprove of serving girls making noise. However, I find Ms. Tendwell's performance is quite satisfactory, so I have elected to overlook this indiscretion. ->Night_Of_Murder


+[Let's talk about something else.]
Excessive talking is a terrible vulgarity, but for the sake of your paper, I shall indulge just this once. ->Start 

  



===Suspicions===

+[Has anyone in the house been acting strange?]
I have always found one Ms. Lavender Ditch to be a most unusual character. Her manner is most sullen, and one cannot help but question the morals of a woman who elects to spend her days mucking about in a stables.
~unlockStatement("Theodosia_Hold", 6)
I requested Charles release her from her duties several times. Alas, men of Charles' calibre are often dodddering when expedition is required and far too quick to finish when some strenuous labour would be of benefit.
That was rather clever, don't you think? One does hope you will make note of these pithy observations of mine in your publication.
->Suspicions

+[Did you notice anything unusual about the body?]
One cannot help but notice the dramatic position in which my dear husband chose to die. A true testament to his character. Only one of immaculate breeding such as Charles would succumb to rigor morits in such a statuesque pose.
->Suspicions

+[Did your husband have any enemies?]
Charles was fond of all peoples and creatures under the sun.
Barring the Irish. He <i>loathed</i> the Irish.
-> Suspicions

+[Let's talk about something else.]
As you wish. ->Start


===Examination===

+[<i>Examine her hands.]
<i> Her gloves are a pristine white. However, you notice they are monogrammed. "M.H."
~unlockItem("maximillians_gloves")
<i>Why is Theodosia wearing Maximillian's gloves...?</i>
->Examination

+[<i>Examine her clothing.]
<i>You notice some unusual items on Theodosia's person.</i>
<i>You think you might be able to grab them without her noticing...</i>
-> Pickpocket

+[<i>Examine her face.]
<i> Her makeup is exceptionally fashionable. </i>
<i> Her lipstick shade is a very light pink. </i>
~pink_lipstick = true
{ - pink_lipstick_smudge: <i>Odd. You think you've seen that lipstick elsewhere...</i>}
{ - pink_lipstick_smudge and burnt_letter: 
~affair_revealed = true
}
-> Examination

+[<i>Return to the conversation.]
<i>You return to your conversation with Theodosia.</i> 
->Start

=Pickpocket
+[<i>Pickpocket Theodosia.</i>]
~TransitionWithoutAudio("Garden","Theodosia Pocket")
->DONE

+[<i>Leave it for now.</i>]
<i>You leave it for the moment.</i> ->Examination

===Divorce===



+{affair_revealed} [But you were sleeping with his brother!]
And we can be most certain that Charles had a litany of his own lovers and companions, as is the case with most men of his rank.
It is entirely appropriate for a lady in such a situation to find herself a discrete companion of her own.
Charles understood this, one is quite sure. Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider.
He would have come to this realisation himself. One is quite sure.
->Start


+{burnt_letter and not affair_revealed}[He accuses you of adultery in the letter. Were you unfaithful to Charles?]
Of course not. That is not to say that Charles was acting unreasonably. It is most appropriate for men of Charles' stature to indulge in extreme paranoia. Such neuroticism is a clear sign of an active, educated mind.
Unless the sufferer is impoverished. Neuroticism amongst the poor is a clear sign of insanity. ->Start

+{not affair_revealed}[Why did he want to divorce you?]
Heavens, who is to say? Likely it was merely a flight of fancy on the part of my late husband. He would have come to his senses and reneged upon the whole foolish idea, I am quite sure.  ->Start





===Affair===

+{lavender_confession}[I spoke to Lavender. I know you're blackmailing her. She told everything.]
Ah, I see. So the stable girl has betrayed me and revealed all. #speaker: Theodosia Hold #portrait:theladynegative
~unlockStatement("Theodosia_Hold",5)
Alas, it is a lesson learned. One simply cannot trust a woman who works with horses.
->Affair_Cont

+{pink_lipstick and pink_lipstick_smudge}[Your lipstick matches the lipstick smudge on Maximillian's neck.]
Ah. I see. Quite the <i>clever</i> deduction, sir. #speaker: Theodosia Hold #portrait:theladynegative
->Affair_Cont


+{theodosias_gloves and maximillians_gloves}[You're wearing his gloves!]
~mannish_hands_gag = true
...One always feared this day would come. My greatest shame, brought forth into the cold light of day. #speaker: Theodosia Hold #portrait:theladynegative
You are correct sir. My hands are... unseemly large- manlike, one might say. Even my late husband's gnarled fingers were daintier than mine. I am cursed with- mannish hands. 
<i>Oh!</i> To even say it aloud- I feel faint! I am ruined! I imagine this will be front page on that paper of yours. ->Hands_Gag


+{theodosias_pants}[I found your underwear in Max's room!]
Ah. Yes. That is rather incriminating.
->Affair_Cont


=Hands_Gag

+[I don't care about your hands! Tell me about the affair!]
Well- if you insist. Personally I feel this would be of <i>far</i> greater interest to your readers. #speaker: Theodosia Hold #portrait:theladyneutral
->Affair_Cont

+[I'll probably write about your affair with your brother-in-law.]
I- suppose such a banal matter <i>would</i> be of interest to more <i>common</i> folk. #speaker: Theodosia Hold #portrait:theladyneutral
->Affair_Cont


=Affair_Cont
~affair_revealed = true
But you see- #speaker: Theodosia Hold #portrait:theladyneutral
Heavens, how might one explain-
I am afraid you have rather misunderstood my liason with Maximillian. It is really quite mundane, I assure you.
~theodosia_confession = true
~unlockStatement("Theodosia_Hold",4)
You see, in marrying a older man, I was rather assured to eventually be widowed, much as I am now. 
Maximillian, being vividly aware of how unfashionable widows are at present, merely offered me his hand upon my late husband's inevitable demise to spare me taking the garish title of <i>dowager</i>, an offer I firmly accepted. 
Maximillian is a most foreward-looking man, you see. Much like his brother in that regard. #speaker: Theodosia Hold #portrait:theladypositive
And seeing as our eventual marriage was quite assured, Maximillian merely suggested we rehearse our <i>conjugal duties</i>, so to speak. And we did. Several times. #speaker: Theodosia Hold #portrait:theladyneutral
One could hardly call such a dalliance an <i>affair</i>. It is more akin to- a form of insurance! Yes, insurance! #speaker: Theodosia Hold #portrait:theladypositive
So you see, the truth of the matter is far more mundane than it might seem at first. #speaker: Theodosia Hold #portrait:theladyneutral
Not even of passing interest to your readership, I can quite assure you.
 
+[Sounds entirely reasonable.]
But of course. I am a most reasonable woman. #speaker: Theodosia Hold #portrait:theladypositive
++[I'm sure you won't mind me publishing such a dull story.]
Wait! <i>wait</i>!  #portrait:theladyshock
Ahem.  #portrait:theladyneutral
A moment of your time before you go, sir. One must admit that in certain uneducated circles, arrangements such as mine and Max's can be seen as somewhat- immoral.
That is to say, the revelation of this information could prove rather- runious for me.
So I would ask you, sir. Would you consider- keeping this information out of the papers? ->Affair_End
 
 +[I have the same arrangement with my brother-in-law.]
How curious. And terribly fashionable, I may add.
++[I need to think about what all this means.]
A moment of your time before you go, sir. One must admit that in certain uneducated circles, arrangements such as mine and Max's can be seen as somewhat- immoral.  #portrait:theladyneutral
That is to say, the revelation of this information could prove rather- runious, for me.
So I would ask you, sir. Would you consider- keeping this information out of the papers? ->Affair_End
 
+[Have you no shame? You had an affair with your husband's brother!]
Well- Charles had his own litany of lovers! He spent more time at <i>bordellos</i> than he did with his own son!  #portrait:theladynegative
If it is acceptable for him to seek comfort elsewhere, is it not entirely appropriate for a lady of my rank to source a discrete companion of her own as well?
Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider than matters of the flesh!
Charles merely overreacted! I am quite sure, had he not perished, we would have reconciled. Of this I am <i>certain</i>!  #portrait:theladyneutral
**[I need to think about what all this means.]
No, wait. <i>Wait</i>!  #portrait:theladyshock
Ahem.
A moment of your time before you go, sir. While not quite as scandalous as, say, a particularly manlike set of hands, one must admit that in certain uneducated circles, arrangements such as mine and Max's can be seen as somewhat- immoral.
That is to say, the revelation of this information could prove rather- runious for me.
So I would ask you, sir. Would you consider- keeping this information out of the papers? ->Affair_End





=Affair_End


*[I will, but it's gonna cost you.]
Do you expect me to carry <i>loose coins</i> upon my person, sir? Like some sort of common <i>prostitute</i>?! #portrait:theladynegative
A woman of proper breeding possesses no assets. Her home, wealth, and children are entiely the property of her husband. #portrait:theladyneutral
So you see sir, I have <i>nothing</i> to my name. And should you reveal my actions to the public...
Well, I would have less than nothing... ->Affair_End

+{lavender_confession}[Fine. But in return, Dorothy and Lavender get to keep their jobs.]
Hmm. I do not care for the sapphically inclined stablehand, but Ms. Tendwell has been performed her duties as a maid quite admirably.
Very well. Should you refrain from publishing the details of my dalliance with Maximillian, I shall allow Ms.Tendwell and the horse girl to remain at Wenchwatch Hall.
Yes, one does feel that this is a fair arrangement. ->Start


+[Don't worry, I'll keep this quiet.]
A most sensible decision. Inter-familial dalliances have become so throughly dull of late. I am quite sure your readership would have little interest in mine. ->Start


+[Sorry, this is going on the front page!]
Very well. Ruin me if you must. But if I am to be ruined, I insist that my portraiture emphasises my rounded chin. It is an indicator of exceptionally thorough breeding.->Start


+[I'll need to think about it.]
Very well. One sincerely hopes you make the well-bred decision.->Start



===Accuse===


*{theodosia_confession}[You killed your husband to keep your affair quiet!]
I- I would never have done such a thing! Affairs are quite commonplace in cultured society- to kill over such a triviality is simply preposterous! 
Furthermore, I was convalescing in my room the entire night, as Dorothy I am quite sure Dorothy will confirm!->Accuse


*{theodosias_gloves}[I found your gloves covered in the Admiral's blood!]
Good sir, I have been wearing these same gloves since yesterday evening. 
Something of a fashion faux pas, I am aware. However, considering the recent death of my husband, one must surely be allowed some leniency.
Ask my maid if you do not believe me. She will confirm the veracity of my statement.
->Accuse

*{brooch}[You were fighting with Charles last night and stabbed him with his own brooch!]
Sir, that is simply <i>preposterous</i>.
I can assure you, my husband remained quite intact throughout our discussion yesterday evening.
Besides, I thought that brooch of his to be quite hideous.
You may accuse me of mariticide, sir, but do not <i>dare</i> imply I so much as <i>touched</i> such a hideous piece of regalia!
->Accuse


+[Forget I said anything.]
Already forgotten. I must admit to having found the accusation more thrilling than insulting. ->Start

+[I'll find more proof! And then everyone will know what you did!]
You newspapermen, so <i>insistent</i>! Why, if you weren't so desperately poor, I'd almost find this ambition attractive.->Start




