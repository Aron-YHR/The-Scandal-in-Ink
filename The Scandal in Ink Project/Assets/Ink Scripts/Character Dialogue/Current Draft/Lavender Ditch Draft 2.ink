//IN NEED OF A RE-WRITE


INCLUDE Secrets.ink


->INTRO
===INTRO===
-> Start


=== Start ===
{ TURNS_SINCE(-> INTRO) == 0:
    {
 - lavender_confession == true:You need something? #speaker: Lavender Ditch #portrait:stablehandneutral

- else:The <i>f&!@k do you want</i>?! #speaker: Lavender Ditch #portrait:stablehandnegative
    }
}



*{not lavender_confession}[Where were you the night of the murder?]
That's none of your &$%"!@*! business! ->Start


*{not lavender_confession}[Tell me about your relationship with the Admiral.]
He paid me to tend the horses. I tend the horses. Nothing more than that.
Can you get through that thick newsmonger skull of yours, hah? -> Start


*{ankle_letter}[I found this letter for you from Dorothy...]
#portrait:stablehandshock
Oh <i>s%@$e</i>!  
~ unlockStatement("Lavender_Ditch",2)
Where did you find those?
It- it's not what it looks like. I'm only friends with Dorothy, that's all! We're close friends!
->Letters_Discovered


*{brooch}[I found the Admiral's brooch hidden in the horse's saddle.]
And what of it?
You accusing me of stealing? I know I've no fancy airs or graces like some in this house, but that doesn't make me a thief.
->Brooch_Discovered



+[<i> Examine the suspect more closely. </i>]
<i> You subtly inspect Lavender for clues.</i>
->Examination


+[It was <i>you</i>! You killed the Admiral!]
 #portrait:stablehandnegative
And why would I do a thing like that? ->Accuse

+[<i>Leave.</i>]
->DONE



 ===Brooch_Discovered===

+[The brooch is covered in the Admiral's blood.]
->Murder_Weapon

+[This brooch was stolen off the Admiral's corpse.]
->Murder_Weapon

+[I think the murderer used this to kill the Admiral.]
->Murder_Weapon

=Murder_Weapon
Oh <i>s%@$! #portrait:stablehandshock
~unlockStatement("Lavender_Ditch",1) 
I- I didn't know that was there. Honest.
I was in my chambers last night when the Admiral got done in, cross my heart.
I'm not a killer. And I don't go round swindling what isn't mine. I don't cause trouble.
#portrait:stablehandnegative
More than I can say for some in this house... ->Alibis



=Alibis
*[What do you mean by that?]
 #portrait:stablehandneutral  
...Nothing. Forget I said anything. ->Alibis 

*[Do you have an alibi for last night?]
 {lavender_confession: I was with Dot last night. In her bedroom. She'll tell you as much, if you let on you know about the two of us.}
{not lavender_confession:...I don't, no.} ->Alibis

*[I believe you, but I know you're not telling me something.]
 #portrait:stablehandneutral  
I- listen, just forget I said anything, alright? ->Start

*[This isn't looking good for you, Lavender.]
 #portrait:stablehandnegative
You think I don't f@£%!&g $£%@!*$& know that?! 
I know what it bloody well looks like, but I didn't do naught! I swear! ->Start 

*[I need to think about what this means.]
 #portrait:stablehandneutral
...Right. ->Start




===Letters_Discovered====

*[I've already read them, Lavender. I know all about your relationship with Dorothy.]
#portrait:stablehandneutral
Alright. It's true. Me and Dorothy, we're- together.
Just- please keep that to yourself.
I know that's not in your nature, you being a gossip monger and all. It's just-
We've been doing our best to keep it quiet.
I've seen how people round here treat men who fancy each other's company.
I'd not like to find out how they'd treat us... ->Letters_Discovered


*[Is this what you've been hiding?]
I- it's complicated.
I promised I wouldn't say anything... ->Lavender_Tells_All


*[Is this why you've been so reluctant to speak to me?]
I- it's complicated.
I promised I wouldn't say anything... ->Lavender_Tells_All


=Lavender_Tells_All

*[You can tell me. I'll keep it a secret.]
->Affair_Revealed


*[Out with it! Otherwise your lesbian liason ends up on Page 3!]
...You're nothing but a bloody gossip monger.  #portrait:stablehandnegative
->Affair_Revealed


*[Just tell me already!]
->Affair_Revealed















=Affair_Revealed

Alright.
 #portrait:stablehandneutral
The other day- the Lady Hold and Sir Max were out for their weekly horse ride. 
Now ususally, I sneak in a lunch with Dot while they're away. But she was busy with the little lad, so I decided to give the stables a mucking out.  #portrait:stablehandneutral
Only, when I got to the stables, I found the Lady and Max- I found them in an awkward-
~lavender_confession = true
~affair_revealed = true
~ unlockStatement("Lavender_Ditch",3)
They were- making baskets, if you catch my meaning.

->Affair_Revealed_P2



=Affair_Revealed_P2
*[I don't understand.]
Making the beast with two backs! ->Affair_Revealed_P3

*[What's so wrong about making baskets?]
No! They were- y'know! Making the beast with two backs! ->Affair_Revealed_P3

*[They were what?]
Making the beast with two backs! ->Affair_Revealed_P3

*[Ooh, I love baskets!]
No, you don't understand! They were- making the beast with two backs. ->Affair_Revealed_P3

*[<i>Gasp!</i> You caught Maximillian sleeping with the Admiral's wife?]
Exactly that. ->The_Admiral_Informed




=Affair_Revealed_P3
*[Why can't anyone in this house talk normally?!]
#portrait:stablehandnegative
They were f%@£*@g shagging!
**[<i>Gasp!</i>]
->The_Admiral_Informed


*[Do you mean to say Max was sleeping with his own brother's wife?]
Exactly that.
->The_Admiral_Informed


=The_Admiral_Informed
#portrait:stablehandneutral
Anyway, they must've seen me, because they leapt up and started dressing.
They were in such a panic, I could've sworn they were putting on each other's clothes by accident.
~ unlockStatement("Lavender_Ditch",4)
I ran off to tell the Admiral what I saw. He was furious. I've never seen a man that mad in all my life.
Then the Lady Hold this morning, before you arrived, she pulled me aside. She seemed to know you were coming...
~ unlockStatement("Lavender_Ditch",7)
See, she said she knew about me and Dot. Said she'd slander us in the papers and have us both dismissed if I didn't keep hush about what I saw.
#portrait:stablehandnegative
Now that uppity ol' $@&%!@ can do what she likes to me, but...
I can't let that happen to Dot. She needs the money. And she loves caring for the little lad... #portrait:stablehandneutral
Please, don't tell the Lady I've let slip about her secret.->The_Admiral_Informed_P2




=The_Admiral_Informed_P2

*[Can you prove any of this?]
#portrait:stablehandneutral
I can't prove they were shagging, no. But...
I wasn't actually on my own last night... I was in Dot's rooom. In her bed. With not a lot of... 
~ unlockStatement("Lavender_Ditch",5)
Let's just say I was stuck in an awkward position.
That's why I didn't follow after Dorothy when the little lad screamed.->The_Admiral_Informed_P2



*[Do you think that Theodosia could be the killer?]
#portrait:stablehandneutral
Anything's possible, but...
I don't think so. Don't think she has it in her.
~ unlockStatement("Lavender_Ditch",6)
Besides, I could hear her crying her eyes out all bloody night. ->The_Admiral_Informed_P2


*[This is clearly all lies. Lesbians aren't even real!]
#portrait:stablehandnegative
... ->The_Admiral_Informed_P2


*[I need to think about what this all means.]
#portrait:stablehandneutral
Do what you have to. I'll only ask you to please keep this to yourself. I know that's not in your nature, being a newsmonger and all.
But like I said, people can be cruel to the likes of us.
And from what she tells me, Dot's family aren't...
#portrait:stablehandnegative
...They're not the sort who'd look kindly on us. ->Start



===Examination===

+[<i>Examine her hands.]
<i> Her hands are covered in muck and horse hair. They are quite filthy. </i>
->Examination

+[<i>Examine her face.]
<i> While her face is generally clean, a large amount of hay has become caught up in her hair.</i>
-> Examination

+[<i>Examine her clothing.]
<i> Her clothing is unkempt and coated in muck and hay, as expected of a stabe hand.</i> 
-> Examination

+[Return to the conversation]
<i>You return your focus to the conversation at hand.</i> -> Start




===Accuse===
*{brooch}[I found the brooch hidden in the saddle of the horse you tend!]
That doesn't make me a f%$*!@g killer, you ponce! ->Accuse

*{brooch}[You stabbed the Admiral with his brooch then hid it in the stables to sell later!]
I know how it looks, alright, but I'm not a killer. And some thick-headed newsmonger saying otherwise won't change that.
Now if you're done accusing me of being a killer, you can bugger off. ->Accuse

+[I know there's more proof that you did it! I just have to find it.]
Well then bugger off and find it, then! At least then I'll get a few moments peace from you! ->Start

+[Forget I said anything.]
Fine. ->Start




