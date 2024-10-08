INCLUDE Secrets.ink



-> Start

=== Start ===



{!Ah, brother dearest! I am beset by grief!}




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

+ {test_secret} [I know you're blackmailing the stable hand.]
->Secret_Revealed



+[Leave]
->DONE


=== Relationship ===

+[Chuck?]
My pet name for him. The great Admiral Chuck Hold!
He despised my pet names. I can't possibly imagine why. His Naval comrades thought them most endearing.
-> Relationship




+[So, you were close?]
Charles was my muse, my guiding light. He shaped me into the masculine throroughbred that now stands before you!
->DONE




=== Secret_Revealed ===

+[I found the love letters. I spoke to Lavender.]
->DONE



=== Night_Of_Murder ===

+[Did you hear anything that night?]
Alas, I slept soundly through the whole dreadful affair. Would that I had heard that- devil strike my dear brother, I can assure you I would have leapt forward in naught but my undergarments, grabbed my sword by the shaft, and given the devil a good thrusting!
->hear_response

+[When did you discover the body?]
Oh, such a frightful thought! I was roused from my sleep by a most terrible scream from the young master Avery. I ran to the dear boy's aid with the utmost urgency, pausing only to dress and paint my face in the most slapdash manner.
->Night_Of_Murder





+[Let's talk about something else.]
->Start



=hear_response
+[I'm sure you have have. ]
Why of course!
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
-> Start


=Ditch

+[Did the Admiral have any issues with Ms. Ditch?]
My dearest departed brother did find her difficult. He spoke often of the dire conditions of the stables and characterised Ms. Hand as slovenly and sullen.
-> Suspicions
    


+[Do you think Ms. Ditch could have killed the Admiral?]
I do hate to cast aspersions on dear Ms. Hand, but to be frank, she does strike one as a most evasive character.
-> Suspicions



















