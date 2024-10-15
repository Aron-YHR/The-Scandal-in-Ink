INCLUDE Secrets.ink



-> Start

=== Start ===

What? #speaker: Ms. Ditch



*[When did you discover the body?]
I haven't seen it. I was in bed when he got done in. And I've no interest in ogling  a corpse. Nor should you.
->Start



*[Have you noticed anything suspicious?]
Nothing I'd tell some bloody scribbler sticking his nose where it don't belong. Now bugger off.
->Start


*[Tell me about your relationship with the Admiral.]
He paid me to tend the horses. I tend the horses. Nothing more than that.
Can you get through that thick newsmonger skull of yours, hah?
-> Start


+{love_letters and found_lavender_name}[Looking for these? <i>Show her the letters</i>]
Where did you get those?
It was that bloody fop, wasn't it? I'll wring that thieving bugger's neck for this!
The two of you are in cahoots then, is that it? Is that how you newsmongers get by, hah? Pinching some some stablehands shillings?
What is it <i>you</i> want, then?
->Letters_Discovered


+{Brooch}[I found the Admiral's brooch hidden in the horse's saddle.]
And why should I care?
->Brooch_Discovered


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

+[Blank]
TBC
->Relationship

+[Blank]
TBC
->Relationship

+[Blank]
TBC->Relationship

+[Let's talk about something else.]
->Start


===Suspicious===

+[Blank]
TBC
->Suspicious


+[Blank]
TBC
->Suspicious

+[Blank]
TBC 
-> Suspicious

+[Let's talk about something else.]
->Start

===Brooch_Discovered===

+[The brooch is covered in the Admiral's blood.]
->Murder_Weapon

+[This brooch was stolen off the Admiral's corpse.]
->Murder_Weapon

+[I think the murderer used this to kill the Admiral.]
->Murder_Weapon

=Murder_Weapon
FILL ME IN!
->DONE

===Letters_Discovered====
->DONE

===Examination===

+[<i>Examine her hands.]
<i> Her hands are covered in muck and horse hair. They are quite filthy. </i>
->Examination

+[<i>Examine her face.]
<i> While her face is generally clean, a large amount of hay has become caught up in her hair. She seems agitated.  
-> Examination

+[<i>Examine her clothing.]
<i> Her clothing is unkempt and coated in muck and hay. </i> 
-> Examination

+[Return to the conversation]
-> Start




