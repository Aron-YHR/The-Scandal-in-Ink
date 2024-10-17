INCLUDE Secrets.ink



-> Start

=== Start ===

What? #speaker: Ms. Ditch



*[Where were you the night of the murder?]
FIX MEEEEE
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
Give me those! Please, before he knows I've found them!
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
Alright, I know how that looks. But I didn't know that was there. Honest.
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
I've seen what they do to the doxies when they catch hem. And the women of the town they drag out of the bordellos.
I'd not like to find out what they'd do to us.
->Lavender_Tells_All

*[Who is this "he"?]
->Max_Revealed_P1


=Max_Revealed_P1

That bloody fop, Maximillian.
Lord knows how, but he found Dot's letters. 
Last night, after the Admiral got knocked off, he came and found me.
He made me swear I'd keep quiet. Or else he'd tell everyone 'bout me and Dot.
*[Keep quiet? About what?]
Well- the other day- when the Lady Hold and Sir Max were out for their weekly ride, I went to muck out the stalls, and-
And I found the Lady and Max- basket making, if you catch my meaning.
->Max_Revealed_P2



=Max_Revealed_P2
*[I don't understand.]
They were- making the beast with two backs.
->Max_Revealed_P3

*[What's so wrong about making baskets?]
No, you don't understand! They were- making the beast with two backs.
->Max_Revealed_P3

*[Ooh, I love baskets!]
No, you don't understand! They were- making the beast with two backs.
->Max_Revealed_P3

*[<i>Gasp!</i> You caught Maximillian sleeping with the Admiral's wife?]
Yes, I did.
->The_Admiral_Informed




=Max_Revealed_P3
*[Why can't anyone in this house talk normally?!]
They were shagging!
**[<i>Gasp!</i>]
->The_Admiral_Informed

*[Do you mean to say Max was sleeping with his own brother's wife?]
Just that, lad.
->The_Admiral_Informed


=The_Admiral_Informed
I s'pose they saw me, because they leapt up and started dressing. 
But I was already gone to tell the Admiral. I've never seen a man that mad.
That night, I was with Dot when she heard the little lad of the house scream.
She rushed off, and I went to follow after her, only Max found me first. Only he hardly looked like himself. His wig was crooked, his hands were soaking wet, and he had this mad sorta look in his eye.
Then he tells me he found my letters, and he says that if I tell anyone what I saw, he'd tell everyone about me & Dot, about her letter. Said he'd have them published in all the papers.
He can do what he likes to me- but I won't let him do that to Dot. She doesn't deserve that.
->The_Admiral_Informed_P2




=The_Admiral_Informed_P2

*[Can you prove any of this?]
Ask Dot. She'll vouch for where I was last night. Just- please don't let on you know about us, or about the letters.
I don't want her to know 'bout any of this.
->The_Admiral_Informed_P2



*[Do you think that Max could be the killer?]
I'd have said that puffed up maccaroni didn't have it in him only a day ago.
I'm not so sure anymore. But to kill your own brother.
I can't understand how anyone could do that.
->The_Admiral_Informed_P2


*[This is clearly a lie. Lesbians aren't real!]
...
If you had as much brains as guts, saying something like that, you'd almost be clever.
->The_Admiral_Informed_P2


*[I need to think about what this all means.]
Do what you have to. I'll only ask you to please keep this to yourself. I know that's not in your nature, being a newsmonger and all.
I've seen what they do to the doxies when they catch hem. And the women of the town they drag out of the bordellos.
I don't know what they'd do to us, to Dot, but I'd not like to find out.
She doesn't deserve to have her name dragged through the muck.
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





