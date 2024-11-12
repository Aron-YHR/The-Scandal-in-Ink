INCLUDE Secrets.ink




->INTRO

===INTRO===
-> Start

=== Start ===
{TURNS_SINCE(-> INTRO) == 0: Well hello, my fashion-challenged friend! You have some questions, yes?} #speaker: Maximillian Hold #layout:right #portrait:fopneutral

+[Where were you the night of the murder?]
~ unlockStatement("Maximillian_Hold",1)
I retired early to my chambers last night. My revelation in relation to gloveless fashion rather drained me.
<i>Curse</i> this ingemious mind of mine! Had I only known what would befall that night!

->Night_Of_Murder


+[Have you noticed anything suspicious?]
~ unlockStatement("Maximillian_Hold",3)
Oh, you journalist types- such terrible tattlers! I am normally not one for idle gossip, but for you I shall make an exception!
->Suspicions


+[How was your relationship with your brother?]
Oh, zounds I say, zounds! Charles! My dearest Chuck! Gone from this world too soon!
-> Relationship

+[What the hell are you?!]
Curse that sharp journalist eye of yours, sir! Yes, I admit it! I am most scandalously underdressed.
In my haste to go to young Avery's side, I was forced to adorn clothing  rather haphazardly. I hadn't even time to adorn gloves!
I tried to pass of my gloveless attire as a matter of style, but there is no hiding anything from you, sir!
Ah, first I must grapple with the death of dear Chuck, and then I am exposed as a ruffian, in front of a journalist no less! I can hardly tell which is worse.
-> Start

*{affair_revealed}[I know about your affair with Theodosia.]
Moi? In a dalliance with my dear sister-in-law? I haven't the faintest idea what you could possibly mean, good sir!
->Affair_Revealed

+[It was you! You killed the Admiral!]
Moi, sir? Kill my dear brother? What could possibly have brought you to such an outrageous conclusion? Where is the proof of me committing such a horrendous act?
->Accuse

+[<i> Examine the suspect more closely. </i>]
<i> You subtly inspect Maximillian for clues.</i>
->Examination


+[Leave.]
-> END

=== Relationship ===

+[Chuck?]
My pet name for him. The great Admiral Chuck Hold!
He despised my pet names. I can't possibly imagine why. His Naval comrades thought them most endearing.
-> Relationship


+[So, you two were close?]
Charles was my muse, my guiding light. He shaped me into the masculine throroughbred that now stands before you!
->Relationship

+[Let's move on.]
Whatever you wish, mon cheri!
->Start


=== Night_Of_Murder ===

+[Did you hear anything unusual from your bedroom?]
Alas, I retired to my chambers early last night and slept soundly through the whole dreadful affair.
Would that I had heard that devil strike my dear brother, I can assure you I would have leapt forward in naught but my undergarments, grabbed my sword by the shaft, and given the devil a good thrusting!
->hear_response

+[When did you discover the body?]
Oh, such a frightful thought! I was roused from my sleep by a most terrible scream from the young master Avery. 
I ran to the dear boy's aid with the utmost urgency, pausing only to dress and paint my face in the most slapdash manner. Alas, by the time I arrived, the dreadful deed had been done! 
->Night_Of_Murder


+[Let's talk about something else.]
But of course. ->Start



=hear_response
+[I'm sure you would have.]
Why of course! There is nothing more thoroughly manly than taking hold of a shaft and engaging in some energetic swordplay!
->Night_Of_Murder

+[You need to work on your phrasing.]
I couldn't possibly know what you mean, my dear fellow! All my chums at the gentleman's club insist that I have a most playful and dextrous tongue!
->Night_Of_Murder

+[Let's move to another topic. Quickly]
->Night_Of_Murder


=== Suspicions ===
+[Did your brother have any enemies?]
I do hate to slander the name of another, but given the circumstances, I must admit I have had some concerns regarding the stable hand, Ms. Ditch.
->Ditch

+[Did you notice anything unusual about the murder?]
Ah, I can hardly bear to gaze upon my darling Chuck's form. Ah! To perish in such an unflattering position, and in such garishly red attire! I warned my dear brother many times that red merely accentuated his ruddy complexion. 
He did not take kindly to my suggestions. Alas, Admiral Hold charted his own course in matters of style. 
->Suspicions


+[Let's talk about something else.]
Of course, mon cheri!
-> Start


=Ditch

+[Did the Admiral have any issues with Ms. Ditch?]
My dearest departed brother did find her difficult. He spoke often of the dire conditions of the stables and characterised Ms. Hand as slovenly and sullen.
And to speak personally for but a frief moment, she simply <i>has</i> to do something about her hair. I fear birds may soon start roosting within its tangles.
-> Ditch
    
+[Do you think Ms. Ditch could have killed the Admiral?]
I do hate to cast aspersions on dear Ms. Hand, but to be frank, she does strike one as a most evasive character. Of course, it is natural to be suspicious of one foolish enough to be born into povrty. A most alarming thing to do.
-> Ditch

+[Did you notice anything else suspicious?]
Such as?
-> Suspicions


=== Affair_Revealed ===
*{lavender_confession}[Lavender told me she saw you in the stables with Theodosia.]
~ unlockStatement("Maximillian_Hold",6)
Ah, you've been speaking to the stable hand, have you? 
I daresay she is not the most <i>reliable</i> source, sir. I do hate to gossip, but I fear the dear girl spends more time at the bottom of a brandy bottle than she does in reality, so to speak!
By which I mean she's a terrible drunk.
Now let us speak no more of such an ugly, baseless rumour. We should return to the matter at hand, that being my poor brother's savage murder!
->Start

*{theodosia_confession}[Theodosia confessed to the affair.]
~ unlockStatement("Maximillian_Hold",6)
Ah, that Theodosia, such a wonderful wit! 
Your confusion is perfectly understandable sir- Theodosia's wicked humour can be quite confusing those who are unknown to her. But I assure you, she spoke merely in jest!
I know what you're thinking- a humorous woman, in this day and age? Quite unheard of! But that is dear Theodosia- always ahead of the trend!
Now let us speak no more of such an ugly, baseless rumour. We should return to the matter at hand, that being my poor brother's savage murder!
->Start

*{theodosias_pants}[I found Theodosia's underwear in your room!]
Why- those are <i>mine</i>! Yes, I'm quite sure they're mine! You see, my middle name is- Thomas! Hence the monogram. And I am rather fond of the silkier, frillier fabrics, especially when it concerns my nether-regions.
Now let us speak no more of such an ugly, baseless rumour. We should return to the matter at hand, that being my poor brother's savage murder!
->Start



===Accuse===

*{affair_revealed}[You were having an affair with Theodosia. You killed Charles to keep it quiet!]
~Max_proof1 = true
{
- Max_proof1 and Max_proof2 and Max_proof3: ->Bartering
- else: ->Why
}

*{brooch}[You were fighting with Charles last night and stabbed him with his own brooch!]
~Max_proof2 = true
{
- Max_proof1 and Max_proof2 and Max_proof3: ->Bartering
- else: ->How
}


*{theodosias_gloves}[I found bloody gloves in your room!]
~Max_proof3 = true
{
- Max_proof1 and Max_proof2 and Max_proof3: ->Bartering
- else: ->Who
}






+[Forget I said anything.]
'Tis already forgotten, good sir! I tend to ignore the ramblings of common folk anyway. ->Start

+[I'll find more proof! And then everyone will know what you did!]
While I find your- <i>passion</i>- for your work most endearing, sir, might I suggest you direct it towards someone more worthy of its focus?
Have you performed a thorough inspection of the stables, for instance? ->Start



=Why
Moi? In a dalliance with my beloved sister-in-law?! An outrageous accusation!
+{theodosia_confession}[Theodosia already confessed to the entire thing.]
->Theodosia

+{lavender_confession}[Lavender told me what she saw in the stables. She told the Admiral what she saw.]
->Lavender



=How
I must commend you sir! A most <i>inventive</i> leap of logic. It is most true what they say of your paper, you tell the most fantastical stories!
Alas, that is all it is- a fantasy! If the brooch was found in the stables, I think we can both come to the conclusion of who the <i>true</i> culprit is, no?

+[How did you know the brooch was found in the stables?]
->How_Follow_Up



=Who
Aha! I was not aware that you were <i>rifling</i> through my private quarters! That is considered <i>quite</i> inappropriate in civilised society. I assume members of the lower order are unaware of that particular faux pas. You must simply have nothing worth stealing, aha!
As for the gloves, it is easily explainable. You see, I merely cut myself shaving this morning. Hence the bloodied gloves!

+[I don't see any shaving cuts.]
->Who_Continued


=Who_Continued
I never did tell you <i>where</i> I was shaving, good sir! It is typiccally impolite to expose one's nether regions in public- though as you seem to have a <i>special</i> interest in my regions, I might be convinced to make an exception for you! Aha! Ahahaha! 
->Accuse




=Lavender
Ah, to hell with that damnable peasant. An untrustworthy character, by my estimation. Why, I wouldn't be surprised if it were <i>she</i> that struck down my beloved brother! #speaker: Maximillian Hold #layout:right #portrait:fopnegative
->Accuse

=How_Follow_Up
I- well you see- zounds, it is terribly hot in here! Aha! Ahahaha! 
I'm quite sure you misunderstood me sir. You see, I fear you heard me say something somewhat incriminating, but in fact, I said something utterly exonerating! Yes, I'm quite sure you misheard me!
->Accuse


=Theodosia
She is hysterical! Poor Theodosia is newly widowed and not in her right mind, and all this talk of wills and letters and newspapers has addled her delicate mind. Reading is a most harmful activity for a woman, you know!
You must disregard everything she told you, sir. It is utter poppycock! 
->Accuse



===Bartering===
I- I- I-!
...
Well, aren't you a clever little commoner. #speaker: Maximillian Hold #portrait:fopnegative
You've performed a very <i>thorough</i> investigation, haven't you?
I admit, this must seem terribly suspicious from your perspective. But I can assure you, there is a perfectly logical explanation for all these unfortunate findings of yours.
You see, I hate to gossip, so I refrained from mentioning it heretofore, but I see now I must. Last night, while gazing quite demurely out my bedroom window- I saw a terrible sight. That dastardly stable hand, Ms. Ditch, jumping from the window of my brother's study, covered in blood, our family brooch in her murderous clutches!
Well, there's the terrible truth of the matter, sir! Ms. Ditch, the clear culprit! I'm sure you and that <i>prestigious</i> paper of yours will come to that same conclusion, given the right... input. 

+[What are you getting at?]
->Bargaining_Cont

+[Enough wordplay, Maximillian!]
->Bargaining_Cont

+[Are you trying to bribe me?!]
Oh heavens, sir! Bribery? Moi? Never!
->Bargaining_Cont








=Bargaining_Cont
I am merely waxing lyrical! How <i>tricky</i> a thing the truth is to pin down, wouldn't you agree? Why, had I not now given you such a crucial piece of evidence, you may have come to the conclusion that <i>I</i> was the killer! And had you then published such a report, it would have been quite impossible for me to convince anyone of my innocence.
Yes, quite a potent power you possess, sir. Arbiter of truth! Though I cannot imagine such a profession is... financially lucrative? Particularly for a family man such as yourrself...


+[I get by.]
Is that so?
->Bargaining_Final

+[It's a living!]
Quite.
->Bargaining_Final

+[It pays like shit.]
Quite.
->Bargaining_Final

+[I sent my son to the mines yesterday.]
Yes yes, fascinating. Focus back on me, please.
->Bargaining_Final

=Bargaining_Final
I shall let you know a secret. Given my dear brother's untimely passing, I think it my obligation to protect the family in his stead. I intend to marry Theodosia so as to ensure she and little Avery are well cared for in the years to come. By happenstance, I shall also then inherit the vast majority of Chuck's estate and fortune.
I would be most inclined to make a <i>generous</i> donation to the publication and dedicated newspaper man who uncovered my brother's grisly murder.That is assuming the <i>true</i> killer of my brother is found. And of course, assuming our family name remains unstained by rumours. Rumours of affairs and infidelity, for example.
Does that sound amiable to you, sir?


+[But of course! Lavender must pay for her crimes!]
->Accept_Bribe


+[Keep your bribe. I'm going to publish the truth about what happened here.]
->Refuse_Bribe

+[I'm going to tell the world about your terrible fashion sense. And all the murder and illicit affair stuff too!]
->Refuse_Bribe

+[Um... Could you explain that again?]
->Outburst

+[I need to think about what I want to do.]
Hardly a difficult choice by my estimation, but very well. I await your next publication, sir. I hope to see a story that will satisy us both gracing the front page.
->DONE





=Outburst
Blame the blasted stablehand and I'll pay you off, you illiterate buffoon!
...Ahem. By which I mean, should your paper identify the true killer of Admiral Hold, you should expect your family's finances to improve- dramatically.
Have we a deal?


+[Blame the stable hand, gotcha!]
->Accept_Bribe


+[Keep your bribe. I'm going to publish the truth about what happened here.]
->Refuse_Bribe





=Refuse_Bribe
Fine. Cling to your inane theory. I doubt the handful of fools who read that rag of yours will believe it.
But think on this, sir; your pride will not sustain you, or your wretched family. When you return to whatever squalid little hut you call home and find your loved ones wasted away to nothing, I want you to remember that you had the chance to give them a better- no, a <i>resplendant</i> life. And you threw it away. Will it have been worth it, sir?
->DONE


=Accept_Bribe
Ah! How wonderful to hear! I look forward to seeing the face of Charles' killer splayed out on the front page! It will be the scandal for the ages!
And I must say sir, I think you have a <i>very</i> lucrative career awaiting you. Aha! Ha! Ha!
->DONE


===Examination===

+[<i>Examine his face.</i>]
His face is excessively powdered and painted.  His wig is made of the finest human hair. It is blindingly white.
~pink_lipstick_smudge = true
~unlockItem("pink_lipstick_smudge")
However, you notice a small imperfection. There is a dull rouge smudge on his neck near the collar.
{ - pink_lipstick: Odd. You think you've seen that lipstick elsewhere...}
{ - pink_lipstick and burnt_letter: 
~affair_revealed = true
}
->Examination

+[<i>Examine his clothing.</i>]
->Pickpocket

+[<i>Examine his hands.</i>]
His hands are ungloved and unadorned.
->Examination


+[<i>Return to the conversation.</i>]
<i>You return to your conversation.</i>
->Start

=Pickpocket
<i>Maximillian is excessively overdressed. You imagine that this is considered highly fashionable.
<i>However, you notice an unusual lump in Max's back pocket. You think you might be able to grab it without him noticing...

+[<i>Pickpocket Max.</i>]
~Transition("Study","Maximillian Pocket")
->DONE

+[<i>Leave it for now.</i>]
->Examination







