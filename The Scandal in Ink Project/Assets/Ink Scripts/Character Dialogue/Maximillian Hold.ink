INCLUDE Secrets.ink

Ah, dear Charles! My bosom aches for thee!

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
Yes, I am most scandalously underdressed. Grief does not become me, sir. I do hope you can refrain from exposing my 
-> Start

*{affair_revealed}[I know about your affair with Theodosia.]
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

+[Where were you the night of the murder?]
Alas, I slept soundly through the whole dreadful affair. Would that I had heard that- devil strike my dear brother, I can assure you I would have leapt forward in naught but my undergarments, grabbed my sword, and given the devil a good thrusting!
->hear_response

+[When did you discover the body?]
Oh, such a frightful thought! I was roused from my sleep by a most terrible scream from the young master Avery. I ran to the dear boy's aid with the utmost urgency, pausing only to dress and paint my face in the most slapdash manner.
->Night_Of_Murder





+[Let's talk about something else.]
->Start



=hear_response
+[I'm sure you have have.]
Why of course! There is nothing more thoroughly manly than taking hold of a shaft and engaging in some energetic swordplay! 
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
I do hate to cast aspersions on dear Ms. Hand, but to be frank, she does strike one as a sinister character. Of course, it is natural to be suspicious of one foolish enough to be born into poverty. A very unusual thing to do.
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
+[<i>Tear off his wig</i>]
Eurgh! You brigand! You fiend! You insolent beggar! 
For what possible reason have you deigned to put your ink-stained hands upon my immaculate form?!
~maximillian_hair = true
->Wig_Answer

+[<i>Make note of his natural hair.</i>]
{hair_clump} <i> Maximillian bears an unusual bald spot. His hair is a dark, curled brunette, an exact match for the clump of hair in the Admiral's hand.</i>
{not hair_clump} <i> Maximillian bears an unusual bald spot. His hair is a dark, curled brunette. </i>
~maximillian_hair = true
->Wig_Answer



=Wig_Answer

+{hair_clump}[The clump of hair the Admiral had in his hand was yours! You <i>are</i> the killer!]
->Bargaining

+{not hair_clump}[I'm not quite sure why yet, but I know there was a good reason for it!]
->Done_Talking

+{not hair_clump}[I... Uhhhhhh... Ummmmmm... ]
->Done_Talking


=Bargaining
...
I admit, good sir, this must seem terribly suspicious. But the truth is rarely so simple. I assure you, there is a perfectly good explanation for it all. It is quite impossible for me to be the killer.
I'm sure you and that <i>prestigious</i> paper of yours will come to that conclusion, given the right... support. Don't you agree?

+[What are you getting at?]
->Bargaining_Cont

+[Are you trying to bribe me right now?]
Oh, heavens. Perish the thought!
->Bargaining_Cont

+[Enough games.]
No games, dear sir!
->Bargaining_Cont


=Bargaining_Cont
I am merely admiring the nobility of your profession. To pursue the truth so relentlessly, it is most laudable. No matter what- sacrifices- you make in the process. I can only imagine the financial strain such a profession places upon you, sir- upon your family, perhaps?
I shall let you know a secret. Given my dear brother's untimely passing, I think it my obligation to protect his family in his stead. I intend to marry Theodosia so as to ensure she and little Avery are well cared for in the years to come. By happenstance, I shall also then inherit the vast majority of Chuck's estate. And fortune.
I would be most inclined to make a <i>generous</i> donation to the publication and dedicated newspaper man who uncovered my brother's grisly murder.
That is, if the <i>true</i> killer of my dear brother is found. And our family name remains unstained, of course.
+[And who is the <i>true</i> killer?]
Why that damnable stable girl of course! She killed the noble Admiral in a fit of rage uponbeing removed from her position. The evidence is all there, is it not?
And then, of course, there is the matter of her... deviant tastes. That would be quite the scandalous revelation, no?
I am quite sure that whatever journalist were to publish such a scandal would become a <i>very</i> wealthy man. Wouldn't you agree?
->Bargaining_Final


=Bargaining_Final
+[As I suspected! It was the stable hand all along!]
Ah! How wonderful to hear! I look forward to seeing Charles' true assailant revealed on the front page!
And
->DONE

+[Keep your blood money. I'm going to publish the truth about what happened here.]
Fine. Cling to your inane theory. I doubt the handful of fools who read that rag of yours will believe it.
But think on this, sir; your pride will not keep you or your loved ones fed. When you are watching you return to that squalid little hut you call home and find your loved ones wasted away to nothing, I want you to remember that you had the chance to give them a better life. And instead you chose to tarnish the good name of a respected family.
I await your next publication, sir. I hope to see a story that will satisy us both gracing the front page.
->DONE


+[I need to think about this.]
Very well. I await your next publication, sir. I hope to see a story that will satisy us both gracing the front page.
->DONE



=Done_Talking
You damnable idiot! You buffoon! You wretch! I shall have you hanged for this!
Get out of my sight! I cannot stare at that idiotice pauper's expression of yours a moment longer!
->DONE


=== Examination ===
+[Examine his hands.]
<i> His hands are clean and well manicured. </i>
->Examination

+[Examine his face.]
<i> His face is excessively powdered and painted.</i> 
<i>However, you notice a small imperfection. There is a dull rouge smudge on his neck near the collar. </i>
-> Examination

+[Examine his wig.]
<i> His wig is blindingly white.</i>
-> Examination


+[Return to the conversation]
-> Start


















