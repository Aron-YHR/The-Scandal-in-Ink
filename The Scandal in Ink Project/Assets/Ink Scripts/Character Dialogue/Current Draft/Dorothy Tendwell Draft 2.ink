INCLUDE Secrets.ink


->INTRO
===INTRO===
-> Start



=== Start ===
  {TURNS_SINCE(-> INTRO) == 0: Yes, sir?} #speaker: Dorothy Tendwell #layout:right #portrait:maidpositive

+[Where were you the night of the murder?]
Well sir,  I was alone in my quarters last night, when I suddenly heard young Master Avery scream.
~unlockStatement("Dorothy_Tendwell", 1)
I was in such an awful rush to find the poor boy that- to my shame- I left my chambers while- still in my nightgown. 
I'm afraid by the time I found him, poor Avery was standing over the Amdiral's-
By which I mean that the Admiral was- Oh, even the mention of it- it's too horrible to even say!
->Night_Of_Murder



+[Have you noticed anything suspicious?]
Suspicious, sir? I'm not sure I understand.
->Suspicious

+{checked_door and not door_key and not maximillian_door_key}[Can I have the key to Maximillian's room?]
->Door_Key

+[What did you think of Admiral Hold?]
Admiral Hold was an excellent employer. He provided me with clean lodgings, a warm bed, and six shillings a week in pay. And he adored little Avery. I thought very highly of him. -> Relationship

*{ankle_letter and not extort_Dorothy}[Ms. Tendwell, I found this letter you wrote...] ->Lesbians_Revealed

*{theodosia_note}[Were you aware the Admiral intended to fire you?]
Um- No sir, I wasn't. That is terribly surprising...
->Start

+[<i>Examine the suspect.</i>]
<i>You subtly inspect Dorothy for clues.</i> ->Examination


*{letter_of_dismissal}[I found your letter of dismissal.]
But I- where did you find that?
->Dismissal

+[It was you! You killed the Admiral!]
M- me, sir? Wh- why would you assume I did such a <i>horrid</i> thing? ->Accuse

+[<i>Leave</i>]
->DONE






//No re-writes urgently needed
===Night_Of_Murder===


+[Did you notice anything unusual yesterday?]
Well, I did notice... <i>something</i>.
Yesterday evening, while I was dusting down the stairwell, I saw Lady Hold and Sir Maximillian leaving the stables together.
They often go riding together, but they seemed particularly... flustered on this occassion.
Then later on that day, LadyTheodosia and the Admiral got into a terrible fight.
As I was comforting her, I noticed something rather...odd.
Lady Hold was wearing Sir Maximillian's gloves.
~unlockStatement("Dorothy_Tendwell", 3)
I thought perhaps I had mixed up their delicates, but I wouldn't typically make such a heinous mistake...
~overheard_argument = true
->Night_Of_Murder

+{overheard_argument}[Did you hear what Charles and Theodosia were arguing about?]
Lady Hold has often tells me she considers it is vulgar when servants make excessive use of their senses and faculties, so I thought it especially rude to listen.
->Night_Of_Murder

+[Avery was first at the scene. Could he have been involved in the Admiral's death?]
<i>Sir!</i>
Young Master Avery is a <i>child</i>! Hardly eight years of age! To imply that he could have had a hand in good Admiral Hold's- in his-
~ unlockStatement("Dorothy_Tendwell",7)
Well, it's simply-
Simply-
<i>Baseless slander</i>!
And if there is one thing I am sure of, it is that the noble profession of journalism would <i>never</i> engage in slander! ->Night_Of_Murder

+[Let's talk about something else.]
Very well.
->Start 

//No re-writes urgently needed
===Relationship===

+[How long have you worked for the Hold family?]
Well sir, I came to Wenchwatch Hall seven years ago, shortly after the birth of young Master Avery. They have been remarkably kind to me.  I only hope to one day repay their kindness. ->Relationship

+[Did you have any issues with the Admiral]
Why no sir, Admiral Hold was- a <i>demanding employer</i>, but always very respectful.
If anything, I have treated the Admiral poorly.
Why, only last week, I was four minutes late delivering his breakfast to him.
That was- a dark day for me...
I only wish that his younger brother took after the Admiral in that regard. He can at times be a bit-
A bit- lustful, if you'll excuse my language.
->Lustful

+[Let's talk about something else.]
Of course, sir.
->Start

=Lustful
+[Has Maximillian made inappropriate advances towards you?]
I'm afraid so. Only last week, he- he placed his <i>hand</i> upon my <i>shoulder</i>! I nearly fainted from the shock.
But please do keep that to yourself, sir. I know Lady Hold would be terrible disappointed to discover I was involved in such an obscenity with her brother-in-law. 
I could hardly believe a man with such a noble reputation could have such a- philanderer, to be quite frank!
~ unlockStatement("Dorothy_Tendwell", 4)
-> Relationship

+[Wait, you mean the gay guy in the wig?!]
Sir Maximillian is a very happy and joyous gentleman, sir, I quite agree. I only wish his behaviour was more gentlemanly. 
Only last week, he- he placed his <i>hand</i> upon my <i>shoulder</i>! I nearly fainted from the shock.
But please do keep that to yourself, sir. I know Lady Hold would be terrible disappointed to discover I was involved in such an obscenity with her brother-in-law. 
I could hardly believe a man with such a noble reputation could have such a- philanderer, to be quite frank!
~ unlockStatement("Dorothy_Tendwell", 4)
->Relationship


+[Let's move on.]
As you wish, sir.
->Relationship

//No re-writes urgently needed
===Suspicious===

+[Did anyone in the house hold a grudge against Charles?]
Well, young master Avery was admittedly somewhat displeased that the Admiral confiscated his copy of the Iliad.
~iliad_confiscated = true
But that is hardly reason to suspect a small child of- well, <i>that</i>.
Barring that, I can't think of a single reason for anyone to dislike Charles. He was- very kindly...
->Suspicious


+[Did you notice anything unusual about the body?]
Well, I did notice that the Admiral's brooch was missing.
He was very fond of the family crest. I hardly ever saw him without it.
~unlockStatement("Admiral_Charles_Hold", 3)
->Suspicious

+[Lady Hold doesn't seem very upset. Could she have something to do with the Admiral's death?]
Lady Hold would <i>never</i> involve herself in such a horrid affair! Besides, she confined herself to her room for most of the night.
Poor Lady Hold. She would never dare admit it, but she was terribly upset over her argument with Charles. I could hear her weeping from my quarters.
-> Suspicious

+[Let's talk about something else.]
->Start


===Lesbians_Revealed===
I-
How could you possibly have- Oh heavens. Oh heavens!  Oh <i>heavens</i>!
Sir, this is not what you think it is! I know the content of those letters is terribly debaucherous. But I can explain, sir, truly!
~ unlockStatement("Dorothy_Tendwell", 6)
Just- please sir, I beg you, don't tell Lady Hold. She's such a dignified lady. She would be so ashamed to discover her lady's maid drawing such- lewd images!



*[What's the big deal? It's just an ankle.]
Thank you for being so kind, sir, but I know what you must think of me, and you're quite right: I'm a harlot. 
A strumpet!
I've turned the noble Wenchwatch Hall into a mere brothel!
But I swear to you, those letters were a momentary lapse in judgement!
And those letters- they were only ever intended for her- personal enjoyment. I never had any intention to make such a lewd drawing for- public consumption!
Sir, I beg you- 
People may not understand what Lavender and I <i>are</i>, and should Lady Hold find out- should our families find out-!
I fear what the consequences might be for us...
Would you consider keeping our- <i>special</i> connection- private?
->Lesbians_Cont

*[You trollop!]
You are quite right sir. I've debased myself. You must think me some sort of harlot, or strumpet, or- brothel-keeper. I've disgraced the name of noble Wenchwatch Hall.
But I swear to you, those letters were a momentary lapse in judgement!
Lavender and I- you see- she merely has a friendly interest in my ankles! That is all!
And those letters- they were only ever intended for her- personal enjoyment! I never had any intention to make such a lewd drawing!
Sir, I beg you- 
People may not understand what Lavender and I <i>are</i>, and should Lady Hold find out- should our families find out-!
I fear what the consequences might be for us...
Would you consider keeping our- <i>special</i> connection- private?
->Lesbians_Cont

+[So, you and Lavender are an item?]
Lavender and I...
Yes. Lavender and I are together. I'm sure this must surprise you. I knw it's an- <i>unusual</i> arrangement.
Sir, I beg you- 
People may not understand what Lavender and I <i>are</i>, and should Lady Hold find out- should our families find out-!
I fear what the consequences might be for us...
Would you consider keeping our- <i>special</i> connection- private?
->Lesbians_Cont






=Lesbians_Cont

+[Don't worry. I'll keep this to myself.]
Thank you, sir. I can't possibly thank you enough. ->Start

+{checked_door and not door_key}[I'll keep this quiet- if you give me the key to Maximillian's room.]
The key to- well- I suppose, given the present situation- just this once- I can permit you access to Maximillian's private quarters. I shall fetch it for you.
~door_key = true
~unlockItem("maximillian_door_key")
Now I beg you to forget you ever saw those letters. I promise I shall never so recklessly sketch an ankle again! ->Start

+[This is too juicy to pass up! It's going on the front page!]
Please, sir. I beg you. I know I've made mistakes, I know I may deserve it. But please. <i>Please.</i> Consider come other course of action! ->Start

+[Okay. But it's gonna cost you a pretty penny...]
Cost, sir? I'm not sure I understand. ->Extortion


=Extortion

+[I'm blackmailing you, idiot! Haven't you ever met a journalist before?!] ->Extortion_Final

+[I'll keep this quiet. For a fee.] ->Extortion_Final

+[Neither do I. Let's forget I said anything.]
I see. Thank you, sir. ->Start


=Extortion_Final

Oh. I see. I don't mean to anger you, sir, but I have precious little to give. One week's wages is all I have in savings.

+[Pay up or let the world know. Your choice.]
I see. Very well, sir. 
~extort_Dorothy = true
~unlockItem("dorothy_coins")
Here. Now please. Let us both forget this conversation ever happened. ->Start
+[I'm sorry, but I need the money. I have a family. My kids need to eat.]
I see. Very well, sir. Here. That is everything I have.
~extort_Dorothy = true
Now please. Let us both forget this conversation ever happened.
->Start

+[Never mind. Forget I said anything.]
Thank you, sir. Truly. Thank you.
->Start


===Examination===
+[Examine her hands.]
<i> Her hands are clean and unmarked.  </i>
->Examination

+[Examine her face.]
<i> Her face is clean. Her bonnet holds back a flood of red hair. </i> 
-> Examination

+[Examine her clothing.]
->Pickpocket


+[Return to the conversation]
<i>Your focus returns to the conversation at hand.</i> -> Start


=Pickpocket
<i> Her clothes are practical, modest, and well-kept. However, you notice something unusual sticking out of her back pocket.</i> 
<i> You think you might be able to grab it without her noticing...</i> 

+[<i>Pickpocket Dorothy.</i>]
~Transition("Reception","Dorothy Pocket")
->DONE

+[<i>Leave it for now.</i>]
<i>You decide to leave it for the moment.
->Examination



===Door_Key===



{

- dorothy_confession: ->Gives_Key

- else: ->Keeps_Key

}




=Gives_Key
I suppose I could lend you the key...
~door_key = true
As long as the letters between myself and Lavender remain- private?
*[Whatever you say. Now gimme that key!]
Very well. Here you are. But please do return it swiftly! If Lady Hold were to find out I were doing this-
Oh, heavens- forgive me, Lady Hold... ->Start

=Keeps_Key
I- don't think that would be appropriate, sir.->Start


===Accuse===


+{letter_of_dismissal}[The Admiral fired you! You killed him for revenge, didn't you!]
But- I- I would never! 
Yes, I took the letter, but I would never do such a horrid thing!
Please, sir, you must believe me! ->Accuse

+{brooch}[You stabbed the Admiral with his brooch then stashed it in the stables!]
But- sir! Oh heavens, I may faint-
I couldn't possibly have done that! I was first to be by Avery's side, I would hardly-!
You don't truly believe I murdered the Admiral, do you...? ->Accuse

+[I don't have any more evidence, but I'll prove you killed him!]
Heavens, I must truly have been slacking on my duties if I could possibly be suspected of- offing poor Admiral Hold!
Perhaps he was right about me.... ->Start  



+[Forget I said that.]
Well, if you say so, sir.->Start



===Dismissal===

*[The Admiral fired you? Why are you still here?]
->DONE






*{dorothy_denial}[You <i>did</i> knew he wanted to fire you! You lied to me!]
->DONE



*[You killed the Admiral because he fired you! I always suspected as much!]
->DONE

