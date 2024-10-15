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


*{love_letters and found_lavender_name}[Looking for these? <i>(Show her the letters)</i>]
Where did you get those?
Give me those letters! Please, before he knows I've found them!
->Letters_Discovered


*{Brooch}[I found the Admiral's brooch hidden in the horse's saddle.]
And what of it?
You accusing me of stealing? I know I've not any fancy airs or graces, but that doesn't make me a thief.
->Brooch_Discovered


+[<i> Examine the suspect more closely. </i>]
->Examination


+[Leave]
->DONE

/* ===Night_Of_Murder===


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


// NOT CURRENTLY===Relationship===

+[Blank]
TBC
->Relationship

+[Blank]
TBC
->Relationship

+[Blank]
TBC->Relationship

+[Let's talk about something else.]
->Start  */


/* ===Suspicious===

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
->Start */

 ===Brooch_Discovered===

+[The brooch is covered in the Admiral's blood.]
->Murder_Weapon

+[This brooch was stolen off the Admiral's corpse.]
->Murder_Weapon

+[I think the murderer used this to kill the Admiral.]
->Murder_Weapon

=Murder_Weapon
I... I know how that looks. But I didn't know that was there. Honest.
I was in my chambers last night when the Admiral got done in, cross my heart.
I'm not a killer. And I don't go round diddling what isn't mine. I just keep to myself.
More than I can say for some in this house...
->Alibis

=Alibis

*[What do you mean by that?]
...Nothing. Forget I said anything.
->Alibis

*[Do you have an alibi for last night?]
...I don't, no.
->Alibis

+[I believe you, but I know you're not telling me something.]
->Start

+[You're lying. I think you killed the Admiral, then planned to escape with the family brooch!]
...
...
...
Believe what you want. I'm no killer, and some thick-headed newsmonger saying otherwise won't change that.
Now if you're done accusing me of being a killer, you can bugger off.
->Start 




===Letters_Discovered====
*[I've already read them, Lavender. I know all about your relationship with Dorothy.]
It- it's not like that. I'm a friend of Dorothy, that's all! A very good friend!
->Letters_Discovered

*[Why are these letters covered in blood?]
I- I don't know. I swear it wasn't my doing!
->Letters_Discovered

*[I think it's time you told me what's going on, Lavender.]
...
Alright.
It's true. Me and Dorothy, we're in love. Have been for a while.
She's everything to me. I don't know what I'd do without Dot
Sometimes, when the horses are keeping me busy, Dot- Dorothy- she'll hide a letter for me in the stables. Just to say hello, or...
It's not usual that her letters are this bawdy. That's my influence, not Dot's. 
And she knows I'm not the best with words and that, so she sometimes leaves me... drawings.
I always keep the letters hidden under the haystack. It's nice to have a bit of Dot near- horses aren't great company.
But, the other day, somehow- <i>he</i> found them.
->Lavender_Tells_All



=Lavender_Tells_All
*[Then why are the letters covered in the Admiral's blood?]
I don't know. I swear, I'm no fan of these hoity-toity sorts, but that doesn't make me a killer!
->Lavender_Tells_All

*[Theodosia said she heard strange noises coming from Dorothy's room. Were you there?]
Yes, I was in Dorothy's room last night. 
But you can't tell anyone. There's no telling what will happen to us if people find out what we are.
I've seen what they do to the doxies and unfortunate women they drag out of the bordellos.
I'd not like to find out what they'd do to us.
->Lavender_Tells_All

*[Who is this "he"?]
That bloody fop, Maximillian.
Lord knows how, but he found Dot's letters. 
Last night, after the Admiral got knocked off, he came and found me.
He made me swear I'd keep quiet. Or else he'd tell everyone 'bout me and Dot.
**[Keep quiet? About what?]
Well- the other day- when the Lady Hold and Sir Max were out for their weekly ride, I went to muck out the stalls, and-
And I found the Lady and Max- basket making, if you catch my meaning.
***[What the hell does that mean?]
They were making the beast with two backs!
****[Why can't anyone in this house talk normally?!]
They were shagging!
[<i>Gasp!</i>]
TBC
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





