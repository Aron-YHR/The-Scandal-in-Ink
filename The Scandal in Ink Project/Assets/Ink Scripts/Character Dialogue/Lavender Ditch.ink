INCLUDE Secrets.ink



-> Start

=== Start ===

{! What?} #speaker: Ms. Ditch



+[When did you discover the body?]
TBC
->Night_Of_Murder



+[Have you noticed anything suspicious?]
TBC
->Suspicious



+[Tell me about your relationship with your father?]
TBC
-> Relationship


+{found_love_letters and found_lavender_name}[Looking for these? <i>Show her the letters</i>]
Joke answer
->Start


+[<i> Examine the suspect more closely. </i>]
->Examination



+[Leave]
->DONE




===Night_Of_Murder===


+[How did you discover the body?]
TBC
->Night_Of_Murder

+[You said the Admiral was arguing with someone. About what?]
TBC
->Night_Of_Murder

+[Did you see the murderer?]
TBC
->Night_Of_Murder

+[Was there anything unusual you noticed about the body?]
TBC
->Night_Of_Murder


+[Let's talk about something else.]
TBC
->Start 


===Relationship===

+[Were you and your father close?]
TBC
->Relationship

+[Did your parents have a happy marriage?]
TBC
->Relationship

+[Did your father treat the servants kindly?]
TBC->Relationship

+[Let's talk about something else.]
->Start


===Suspicious===

+[Did anyone in the house hold a grudge against your father?]
Talks a little about the tension between the brothers.
->Suspicious


+[Did you notice anything unusual about the body?]
TBC
->Suspicious

+[Lady Hold doesn't seem very upset. Could she have something to do with the Admiral's death?]
TBC 
-> Suspicious

+[Let's talk about something else.]
->Start




===Examination===

+[Examine his hands.]
<i> TBC </i>
->Examination

+[Examine his face.]
<i> TBC </i> 
-> Examination

+[Examine his clothing.]
<i> TBC </i> 
-> Examination


+[Return to the conversation]
-> Start