//IN NEED OF A RE-WRITE


INCLUDE Secrets.ink


->INTRO
===INTRO===
-> Start


=== Start ===

{TURNS_SINCE(-> INTRO) == 0: What?}  #speaker: Ms. Ditch



*[Where were you the night of the murder?]
That's no concern of yours.
->Start


*[Tell me about your relationship with the Admiral.]
He paid me to tend the horses. I tend the horses. Nothing more than that.
Can you get through that thick newsmonger skull of yours, hah?
-> Start


*{love_letter_1 or love_letter_2}[I found some of your letters...]
Oh <i>shite</i>.
Where did you find those?
It- it's not what it looks like. I'm only friends with Dorothy, that's all! We're close friends!
->Letters_Discovered


*{brooch}[I found the Admiral's brooch hidden in the horse's saddle.]
And what of it?
You accusing me of stealing? I know I've no fancy airs or graces like some in this house, but that doesn't make me a thief.
->Brooch_Discovered


*{pickpocket_lavender}[<i>Pickpocket Lavender.</i>]
~Transition("Stables","LadyPocket")
->DONE

+[<i> Examine the suspect more closely. </i>]
<i> You subtly inspect Lavender for clues.</i>
->Examination


+[Leave]
->DONE



 ===Brooch_Discovered===

+[The brooch is covered in the Admiral's blood.]
->Murder_Weapon

+[This brooch was stolen off the Admiral's corpse.]
->Murder_Weapon

+[I think the murderer used this to kill the Admiral.]
->Murder_Weapon

=Murder_Weapon

Oh shite.
~unlockStatement("Lavender_Ditch",1) 
I- I didn't know that was there. Honest.
I was in my chambers last night when the Admiral got done in, cross my heart.
I'm not a killer. And I don't go round swindling what isn't mine. I don't cause trouble.
More than I can say for some in this house... ->Alibis



=Alibis
*[What do you mean by that?]
...Nothing. Forget I said anything. ->Alibis

*[Do you have an alibi for last night?]
...I- no I don't, no. ->Alibis

*[I believe you, but I know you're not telling me something.]
I- listen, just forget I said anything, alright? ->Start

*[You're lying. I think you killed the Admiral, then planned to escape with the family brooch!]
...
...Believe what you want. I'm no killer, and some thick-headed newsmonger saying otherwise won't change that.
Now if you're done accusing me of being a killer, you can bugger off. ->Start 

*[I need to think about what this means.]
... ->Start




===Letters_Discovered====

*[I've already read them, Lavender. I know all about your relationship with Dorothy.]
~ unlockStatement("Lavender_Ditch",3)
Alright. It's true. Me and Dorothy, we're- together.
Just- please keep that to yourself.
I know that's not in your nature, being a newspaper man and all. It's just-
We've been doing our best to keep it quiet.
And I've seen how they treat men who fancy each other's company- I'd not like to find out what they'd do to us... ->Letters_Discovered


*[Is this what you were trying to hide?]
I- it's complicated.
I promised the Lady of the house I wouldn't say...
->Lavender_Tells_All


*[Is this why you've been so reluctant to speak to me?]
I- it's complicated.
I promised the Lady of the house I wouldn't say...
->Lavender_Tells_All



=Lavender_Tells_All

*[You can tell me. I'll keep it a secret.]
->Affair_Revealed


*[Out with it! Otherwise your lesbian liason ends up on Page 3!]
...You really are a gossip monger, aren't you?
->Affair_Revealed


*[Just tell me already!]
->Affair_Revealed















=Affair_Revealed

Alright, fine.
Well- the other day- the Lady Hold and Sir Max were out for their weekly horse ride. Now ususally, I sneak in a lunch with Dot while they're away. But she was busy with the little lad, so I decided to give the stables a mucking out.
Only, when I got to the stables, I found the Lady and Max- I found them in an awkward-
~lavender_confession = true
~affair_revealed = true
They were- making baskets, if you catch my meaning.

->Affair_Revealed_P2



=Affair_Revealed_P2
*[I don't understand.]
Making the beast with two backs!
->Affair_Revealed_P3

*[What's so wrong about making baskets?]
No!They were- y'know! Making the beast with two backs!
->Affair_Revealed_P3

*[Ooh, I love baskets!]
No, you don't understand! They were- making the beast with two backs.
->Affair_Revealed_P3

*[<i>Gasp!</i> You caught Maximillian sleeping with the Admiral's wife?]
Exactly that.
->The_Admiral_Informed




=Affair_Revealed_P3
*[Why can't anyone in this house talk normally?!]
They were shagging!
**[<i>Gasp!</i>]
->The_Admiral_Informed


*[Do you mean to say Max was sleeping with his own brother's wife?]
Exactly that.
->The_Admiral_Informed


=The_Admiral_Informed
Anyway, they must've seen me, because they leapt up and started dressing.
But I was already gone to tell the Admiral. He was furious. I've never seen a man that mad in all my life.
Then the Lady Hold this morning, when you arrived, she pulled me aside.
See, she said she knew about me and Dot. Said she'd have us both dismissed if I didn't keep mum about what I saw.
She can do what she likes to me, but...
I can't let that happen to Dot. She needs the pay. And she loves caring for the little lad...
Please, don't tell the Lady I've let slip. It'll ruin everything... ->The_Admiral_Informed_P2




=The_Admiral_Informed_P2

*[Can you prove any of this?]
Ask Dot. She'll vouch for where I was last night. Just- please don't let on you know about us, or about the letters.
I don't want her to know 'bout any of this. ->The_Admiral_Informed_P2



*[Do you think that Theodosia could be the killer?]
Anything's possible, but...
I don't think so. I could hear her crying her eyes out all bloody night. ->The_Admiral_Informed_P2


*[This is clearly all lies. Lesbians aren't real!]
...Are you sure you're a journalist? ->The_Admiral_Informed_P2


*[I need to think about what this all means.]
Do what you have to. I'll only ask you to please keep this to yourself. I know that's not in your nature, being a newsmonger and all.
I've seen what they do to the doxies when they catch hem. And the women of the town they drag out of the bordellos.
I don't know what they'd do to us, to Dot, but I'd not like to find out.
She doesn't deserve to have her name dragged through the muck. ->Start



===Examination===

+[<i>Examine her hands.]
<i> Her hands are covered in muck and horse hair. They are quite filthy. </i>
->Examination

+[<i>Examine her face.]
<i> While her face is generally clean, a large amount of hay has become caught up in her hair. She seems agitated.  
-> Examination

+[<i>Examine her clothing.]
~pickpocket_lavender = true
-> Pickpocket

+[Return to the conversation]
-> Start

=Pickpocket
~pickpocket_lavender = true
<i> Her clothing is unkempt and coated in muck and hay, as expected of a stabe hand.</i> 
<i>However, you notice something unusual. A letter is poking out of one of her skirt pockets.</i>
<i>You think you could potentially grab it without her noticing...</i>

+[<i>Pickpocket Lavender.</i>]
~Transition("Stables","LadyPocket")
->DONE

+[<i>Leave the letter for now.</i>]
->Examination









