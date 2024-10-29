INCLUDE Secrets.ink








->INTRO
===INTRO===
-> Start

=== Start ===
{TURNS_SINCE(-> INTRO) == 0: Yes, sir?} 

+[Where were you the night of the murder?]
~affair_revealed = true
~bloody_clothes = true
~brooch = true
~theodosia_confession = true
~ unlockStatement("Maximillian_Hold",1)
I retired to my chambers early that night.

->Night_Of_Murder


+[Have you noticed anything suspicious?]
~affair_revealed = true
~ unlockStatement("Maximillian_Hold",3)
Such as?
->Suspicions


+[How was your relationship with your brother?]
Oh, zounds I say, zounds! Charles! My dearest Chuck! Gone from this world too soon!
-> Relationship

+[What the hell are you wearing?!]
~ unlockStatement("Maximillian_Hold",2)
Ah, my sincerest apologies. I am scandalously underdressed for such an occassion.
-> Start

+{affair_revealed}[I know about your affair with Theodosia.]
Moi? In a dalliance with my dear sister-in-law?
->Secret_Revealed

+[It was you! You killed the Admiral!]
Moi, sir? Kill my dear brother? What could possibly have brought you to such an outrageous conclusion? Where is the proof of me committing such a horrendous act?
->Accuse


+[Leave.]
-> END

=== Relationship ===

+[Chuck?]
My pet name for him. The great Admiral Chuck Hold!
He despised my pet names. I can't possibly imagine why. His Naval comrades thought them most endearing.
-> Relationship




+[So, you were close?]
Charles was my muse, my guiding light. He shaped me into the masculine throroughbred that now stands before you!
->DONE

+[Let's move on.]
Whatever you wish, mon cheri!
->Start


=== Night_Of_Murder ===

+[Did you hear anything that night?]
Alas, I slept soundly through the whole dreadful affair. Would that I had heard that- devil strike my dear brother, I can assure you I would have leapt forward in naught but my undergarments, grabbed my sword by the shaft, and given the devil a good thrusting!
->hear_response

+[When did you discover the body?]
Oh, such a frightful thought! I was roused from my sleep by a most terrible scream from the young master Avery. I ran to the dear boy's aid with the utmost urgency, pausing only to dress and paint my face in the most slapdash manner. Alas, by the time I arrived, the dreadful deed had been done! 
->Night_Of_Murder





+[Let's talk about something else.]
But of course.
->Start



=hear_response
+[I'm sure you would have.]
Why of course! There is nothing more thoroughly masculine than grabbing a firm shaft and giving it a good thrusting!
->Night_Of_Murder

+[You need to work on your phrasing.]
->Night_Of_Murder

+[Let's talk about something else.]
->Start


=== Suspicions ===
+[Did your brother have any enemies?]
One would not normally dare to base slander. However, given the circumstances, I must admit I have had some concerns regarding the stable hand, Ms. Ditch.
->Ditch

+[Did you notice anything unusual about the murder?]
One cannot help but notice the dramatic position in which my dear brother chose to die. A true testament to his character. Only one of immaculate breeding such as dear old Chuck would succumb to rigor morits in such a statuesque pose.
->Suspicions


+[Let's talk about something else.]
Of course, mon cheri!
-> Start


=Ditch

+[Did the Admiral have any issues with Ms. Ditch?]
My dearest departed brother did find her difficult. He spoke often of the dire conditions of the stables and characterised Ms. Hand as slovenly and sullen.
-> Suspicions
    


+[Do you think Ms. Ditch could have killed the Admiral?]
I do hate to cast aspersions on dear Ms. Hand, but to be frank, she does strike one as a most evasive character. Of course, it is natural to be suspicious of one foolish enough to be born into povrty. A most alarming thing to do.
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

===Accuse===

*{affair_revealed}[You were having an affair with Theodosia. You killed Charles to keep it quiet!]
~Max_proof1 = true
{
- Max_proof1 and Max_proof2 and Max_proof3: ->Bartering
- else: ->Why
}

*{brooch}[You stabbed Charles with the family brooch!]
~Max_proof2 = true
{
- Max_proof1 and Max_proof2 and Max_proof3: ->Bartering
- else: ->How
}


*{bloody_clothes}[I found the bloody clothes in your room!]
~Max_proof3 = true
{
- Max_proof1 and Max_proof2 and Max_proof3: ->Bartering
- else: ->Who
}






+[Forget I said anything.]
Already forgotten, good sir.
->Start

+[I'll find my proof! And then everyone will know what you did!]
While I find your- <i>passion</i>- for your work most endearing, sir, I would suggest you direct it towards someone more worthy of its focus.
->Start



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


+{missing_jewel}[I found the missing jewel from the brooch in your room.]
->How_Follow_Up

=Who
Aha! I was not aware that you were <i>rifling</i> through my private quarters! That is considered <i>quite</i> inappropriate in civilised society. I assume members of the lower order are unaware of that particular faux pas. You must simply have nothing worth stealing, aha!
As for my clothes, it is easily explainable. You see, I merely cut myself shaving this morning. Hence the bloodied garments!

+[I don't see any shaving cuts.]
->Who_Continued

+[You can't be serious!]
->Who_Continued

=Who_Continued
I never did tell you <i>where</i> I was shaving, good sir! It is typiccally impolite to expose one's nether regions in public- though as you seem to have a <i>special</i> interest in my regions, I might be convinced to make an exception for you! Aha! Ahahaha!
->Accuse




=Lavender
Ah, to hell with that damnable peasant. An untrustworthy character, by my estimation. Why, I wouldn't be surprised if it were <i>she</i> that struck down my beloved brother!
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
Well, aren't you a clever little commoner.
You've performed a very <i>thorough</i> investigation, haven't you?
I admit, this must seem terribly suspicious from your perspective. But I can assure you, there is a perfectly logical explanation for all these unfortunate findings of yours.
You see, I hate to gossip, so I refrained from mentioning it heretofore, but I see now I must. Last night, while gazing quite handsomely from my bedroom window- I saw a terrible sight. That dastardly stable hand, Ms. Ditch, jumping from the window of my brother's study, covered in blood, our family brooch in her murderous clutches!
Well, there's the terrible truth of the matter, sir! Ms. Ditch, the clear culprit! I'm sure you and that <i>prestigious</i> paper of yours will come to that same conclusion, given the right... input. 

+[What are you getting at?]
->Bargaining_Cont

+[Enough wordplay, Maximillian!]
->Bargaining_Cont








=Bargaining_Cont
I am merely considering how <i>tricky</i> a thing the truth is, sir. Why, had I not given you such a crucial piece of evidence, you may have come to the conclusion that <i>I</i> was the killer! And had you then published such a report, it would have been quite, quite impossible for me to convince anyone of my clear innocence.
Yes, quite a potent power you possess, sir. Arbiter of truth! Though I cannot imagine such a profession is... financially lucrative? Particularly for a family man such as yourrself...


+[I get by.]
->Bargaining_Final

+[It's a livin'!]
->Bargaining_Final

+[It pays like shit.]
->Bargaining_Final



+[<i>Garbled peasant noises</i>]
->Bargaining_Final

=Bargaining_Final
Quite.
I shall let you know a secret. Given my dear brother's untimely passing, I think it my obligation to protect his family in his stead. I intend to marry Theodosia so as to ensure she and little Avery are well cared for in the years to come. By happenstance, I shall also then inherit the vast majority of Chuck's estate and fortune.
I would be most inclined to make a <i>generous</i> donation to the publication and dedicated newspaper man who uncovered my brother's grisly murder.That is assuming the <i>true</i> killer of my brother is found. And of course, assuming our family name remains unstained by rumours. Rumours of affairs and infidelity, for example.
Does that sound amiable to you, sir?


+[But of course! Lavender must pay for her crimes!]
->Accept_Bribe


+[Keep your bribe. I'm going to publish the truth about what happened here.]
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
But think on this, sir; your pride will not keep you or your loved ones fed. When youreturn to whatever squalid little hut you call home and find your loved ones wasted away to nothing, I want you to remember that you had the chance to give them a better- no, a <i>resplendant</i> life. And you threw it away. Will it have been worth it, sir?
->DONE


=Accept_Bribe
Ah! How wonderful to hear! I look forward to seeing the face of Charles' killer splayed out on the front page! It will be the scandal for the ages!
And I must say sir, I think you have a <i>very</i> lucrative career awaiting you. Aha! Ha! Ha!
->DONE




