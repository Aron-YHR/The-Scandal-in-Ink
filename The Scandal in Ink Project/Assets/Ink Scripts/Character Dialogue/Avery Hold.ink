INCLUDE Secrets.ink

VAR dorothy_present = false


-> Start

=== Start ===

{!Yes, sir?} #speaker: Avery Hold



+[Ms. Tendwell said you were first to discover the body. Is that true?]
TBC
->Night_Of_Murder



+[Have you noticed anything suspicious?]
TBC
->Suspicious



+[Tell me about your relationship with your father?]
TBC
-> Relationship


+{avery_confiscated_item}[I know your father confiscated your copy of the Iliad.]
Joke answer
->Start

+[Kid, I can't understand a single word you're saying.]
->Call_Dorothy

+[Y'know you really remind me of my son.]
FILL THIS IN
->DONE

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

===Call_Dorothy===
Shall I summon Dorothy?

+[What the hell does that even mean?!]
TBC
~dorothy_present = true
-> Start

+[Please do.]
TBC
~dorothy_present = true
-> Start

+[No, it's fine. I'll manage.]
~dorothy_present = false
Very well.
-> Start


===Iliad_Confiscated

+[And that's why you killed him, isn't it? Isn't it, Avery?! J'accuse!]
...
->Crying

+[The Iliad? You're seriously reading the Iliad?]
TBC
->Start

+[Tell me, Avery. What exactly <i>is</i> an Iliad?]
TBC
->Start




=Crying
Waaaaaaaah! Waaaaaaaaaaah! Mommy! Dorothy! WAAAAAAAAH!

+[Oh shit.]
TBC
-> You_Fucked_Up

+[Wait wait wait! Don't cry! I was only joking, I swear!]
TBC
-> You_Fucked_Up

+[Spare me your crocodile tears, you patricidal maniac! You're going away for a long time!]
...
WAAAAAAAAAAAAAAAAAAAAAAAAAAAAH!
-> You_Fucked_Up

=You_Fucked_Up
TBC where Dorothy rocks up, and she is pissed off with you.
She tells you to mind your fucking manners.

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


