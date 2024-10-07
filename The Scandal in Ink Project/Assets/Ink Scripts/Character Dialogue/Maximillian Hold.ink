INCLUDE Secrets.ink



-> Start

=== Start ===



{!Ah, my poor little Chuck! I am beset by grief!}




+[Where were you the night of the murder?]

I retired to my chambers particularly early yesterday eve.

->Night_Of_Murder



+[Have you noticed anything suspicious?]


->Start

+[How was your relationship with your brother?]
Ah, Charles. My dearest Chuck! Gone from this world too soon!
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
He despised my pet names. I can't possibly imagine why. His Naval comrades thought them most amusing.
-> Relationship




+[So, you were close?]
Charles was my muse, my guiding light. I am eternally indebted to my elder brother for inspiring the thoroughly modern, masculine man that now stands before you!
->DONE




=== Secret_Revealed ===

+[I found the love letters. I spoke to Lavender.]
->DONE



=== Night_Of_Murder ===

+[You didn't hear anything?]
Alas, I slept soundly through the whole horrid affair. Would that I had heard the devil strike my dear brother, I can assure you I would have leapt forward in naught but my undergarments, grabbed my sword by the shaft, and given the devil a good thrusting!
->hear_response

+[Blank]
->Start



=hear_response
+[I'm sure you would have]
Why of course!
->Night_Of_Murder

+[Let's talk about something else]
->Start















