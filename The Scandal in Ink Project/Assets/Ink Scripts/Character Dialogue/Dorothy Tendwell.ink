INCLUDE Secrets.ink




-> Start

=== Start ===

{!Yes, sir?} #speaker: Ms. Tendwell



+[Where were you night of the murder?]
TBC
->Night_Of_Murder



+[Have you noticed anything suspicious?]
TBC
->Suspicious



+[What did you think of Admiral Hold?]
TBC
-> Relationship


+[Joke question]
Joke answer
->Start

+[Leave]
->DONE



+ {test_secret} [Ms. Tendwell, I found some letters that you wrote...]
TBC
TBC!
TBCCCC!
Big long explaination and blushing (TBC)
->Lesbians_Revealed


===Night_Of_Murder===


+[How did you discover the body?]
TBC
->Night_Of_Murder

+[What were Charles and Theodosia arguing about?]
TBC
->Night_Of_Murder

+[Do you think Avery could have been involved in the Admiral's death?]
TBC
->Night_Of_Murder

+[Let's talk about something else.]
TBC
->Start 


===Relationship===

+[How long have you worked for the Hold family?]
TBC
->Relationship

+[Did the Admiral ever treat you poorly?]
TBC
->Relationship

+[Let's move on.]
Very well sir.
->Start


===Suspicious===

+[Did anyone in the house hold a grudge against Charles?]
Joke about Avery! TBC
->Suspicious


+[Did you notice anything unusual about the body?]
TBC
->Suspicious

+[Lady Hold doesn't seem very upset. Could she have something to do with the Admiral's death?]
TBC 
-> Suspicious

+[Let's talk about something else.]
->Start


===Lesbians_Revealed===

+[What's the big deal? It's just an ankle.]
TBC
->Lesbians_Revealed

+[You trollop!]
TBC
->Lesbians_Revealed

+{not found_lavender_name} [Who is "L"?]
TBC
->Lesbians_Cont

+{found_lavender_name} [So, you and Lavender are an item?]
TBC
->Lesbians_Cont






=Lesbians_Cont

+[Don't worry. I'll keep this to myself.]
TBC
->Start

+[This is too juicy to pass up! I'm gonna tell the world!]
TBC TBC TBC
->Start

+[Okay. But it's gonna cost you.]
Cost, sir? I'm not sure I understand.
->Extortion


+[I need to think about this.]
TBC
->Start


=Extortion

+[I'm blackmailing you, stupid! Haven't you ever met a journalist before?!]
->Extortion_Final

+[I'll keep this quiet. If you can afford to keep me quiet.]
->Extortion_Final

+[Neiher do I. Ignore me.]
->Start


=Extortion_Final

TBC. I have very little etc. Please reconsider etc etc etc

+[Pay up or let the world know. Your choice.]
BLAH BLAH BLAH. Just please don't say anything.
System pays out a platry amount of cash for the bribe.
->Start

+[Never mind. Forget I said anything.]
Thank you, sir. Thank you.
->Start











