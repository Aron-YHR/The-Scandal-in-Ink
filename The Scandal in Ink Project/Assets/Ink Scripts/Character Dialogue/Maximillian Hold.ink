INCLUDE Secrets.ink

Ah, my dear brother! I am beset by grief!

-> Start

=== Start ===



 #speaker: Maximillian Hold




+[Where were you the night of the murder?]

I retired to my chambers early that night. 

->Night_Of_Murder


+[Have you noticed anything suspicious?]
Such as?
->Suspicions


+[How was your relationship with your brother?]
Oh, zounds I say, zounds! Charles! My dearest Chuck! Gone from this world too soon!
-> Relationship

+[What the hell are you wearing?!]
Ah, my sincerest apologies. I am scandalously underdressed for such an occassion.
-> Start

+{Chair}[I know about your affair with Theodosia.]
Hm? What's this? I am quite sure I have no idea what you mean, good fellow
->Secret_Revealed

+[<i> Examine the suspect more closely. </i>]
->Examination

+[Leave]
Good day.
-> END

=== Relationship ===

+[Chuck?]
My pet name for him. The great Admiral Chuck Hold!
He despised my pet names. I can't possibly imagine why. His Naval comrades thought them most endearing.
-> Relationship


+[So you two were close?]
Charles was my muse, my guiding light. He shaped me into the masculine throroughbred that now stands before you!
->DONE


->DONE



=== Night_Of_Murder ===

+[Did you notice anything unusual that night?]
Alas, I slept soundly through the whole dreadful affair. Would that I had heard that- devil strike my dear brother, I can assure you I would have leapt forward in naught but my undergarments, grabbed my sword, and given the devil a good thrusting!
->hear_response

+[When did you discover the body?]
Oh, such a frightful thought! I was roused from my sleep by a most terrible scream from the young master Avery. I ran to the dear boy's aid with the utmost urgency, pausing only to dress and paint my face in the most slapdash manner.
->Night_Of_Murder





+[Let's talk about something else.]
->Start



=hear_response
+[I'm sure you have have. ]
Why of course! There is nothing more thoroughly manly than taking hold of a shaft and engaging in some energetic swordplay
->Night_Of_Murder

+[You need to work on your phrasing.]
I couldn't possibly know what you mean, my dear fellow.
->Night_Of_Murder

+[Let's talk about something else.]
->Start




=== Suspicions ===

+[Did your brother have any enemies?]
I typically don't engage in idol gossip. However, given the circumstances, I must admit I have had some concerns regarding the stable hand, Ms. Ditch.
->Ditch

+[Did you notice anything unusual about the murder?]
Ah, I can hardly bear to gaze upon my darling Chuck's form. Ah! To perish in such an unflattering position, and in such garishly red attire! I warned my dear brother many times that red merely accentuated his ruddy complexion. 
He did not take kindly to my suggestions. Alas, Admiral Hold charted his own course in matters of style. 
->Suspicions


+[Let's talk about something else.]
-> Start


=Ditch

+[Did the Admiral have any issues with Ms. Ditch?]
My dearest departed brother did find her difficult. He spoke often of the dire conditions of the stables and characterised Ms. Hand as slovenly and sullen.
-> Suspicions
    


+[Do you think Ms. Ditch could have killed the Admiral?]
I do hate to cast aspersions on dear Ms. Hand, but to be frank, she does strike one as a figure of suspicion. Of course, it is natural to be suspicious of one foolish enough to be born into poverty. A most alarming thing to do.
-> Suspicions




=== Secret_Revealed ===

+[I know you're blackmailing Lavender. She told me everything.]
Ah, to hell with that damnable peasant. An untrustworthy character, by my estimation. Especially given her - unnatural - affections, wouldn't you agree?
->Secret_Cont_1

=Secret_Cont_1

+[You can't be serious!]
Oh, I am deathly serious mon petit cheri!
->Secret_Cont_2


+ {found_swapped_gloves} [You're still wearing each other's gloves!]
That country bumpkin of a maid is surely illiterate. She clearly mixed up our delicates.
-> Secret_Cont_2

+[I've spoken to Theodosia. She'd already admitted it.]
She is hysterical! Poor Theodosia is newly widowed and not in her right mind, and all this talk of wills and letters and newspapers has addled her delicate mind. Reading is a most harmful activity for an educated lady!
-> Secret_Cont_2



=Secret_Cont_2
Besides, this is nothing but idle gossip, and relates in no way to Charles' murder! You are merely launching scurrilous attacks against a family in mourning. Shame on thee, sir!

+[This was the scandal Charles spoke of in his letter. You killed your own brother to keep it hidden!]
Lies! Slander! Derogation! Are there no depths to which you will not descend. you cad? To accuse me of such heinous deeds without a shred of proof!
There is no evidence to say I did any of these vile deeds, and I defy you to find any, you- you-
Urchin!
->Wig_Snatch



+[You murdered your brother then framed the stable hand for your crimes.]
DIALOGUE NEEDED HERE
-> Wig_Snatch

+[I'm going to tell the world about your terrible fashion faux pas. And all the murder and illicit affair stuff too!]
DIALOGUE NEEDED HERE
-> Wig_Snatch


===Wig_Snatch===
[Tear off his wig]
AGH! HEAVENS! ZOUNDS! ET CETERA! TO BE FINISHED!
-> DONE



=== Examination ===
+[Examine his hands.]
<i> His hands are clean and well manicured. </i>
->Examination

+[Examine his face.]
<i> His face is excessively powdered and painted. He is exceptionally well groomed.</i> 
<i>However, you notice a small imperfection. There is a dull rouge smudge on his neck. </i>
-> Examination

+[Examine his wig.]
<i> His wig is blindingly white.</i>
-> Examination


+[Return to the conversation]
-> Start


















