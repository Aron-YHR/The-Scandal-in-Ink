EXTERNAL Transition(from,to)
EXTERNAL unlockItem(name)
EXTERNAL unlockNPC(name)
EXTERNAL TransitionToMainGame(from,to)

VAR question_tracker = 0

->Body


===Body===


This is Maximillian Hold, sir. Younger brother of the- <i>late</i> Admiral Charles Hold. #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral

Oh, dear brother! To be struck down so tragically! #speaker:Maximillian Hold #layout:left  #portrait:fopneutral
So ignobly!
Surrounded by such <i>horrendous</i> furnishings!
<i>Ah!</i> I do not know how my heart can bear such an onslaught of travesties!
Oh- Dorothy dearest, who is this drably dressed fellow?

This here is a journalist, sir. He says he's from the Weekly Wag. #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral

The Weekly Wag, you say? #speaker: Maximillian Hold #layout:left #portrait:fopshock
Ah! So the press have finally caught wind of my daring new fashion statement: <i>Gloveless</i> hands! #speaker: Maximillian Hold #layout:left #portrait:foppositive
I know what you're thinking! To expose one's hands to the elements, to the streets, to common folk! 'Tis a controversy in the making! 
But I assure you, six months from now, every man about town shall be <i>gloveless</i>!
I am not typically one for interviews, sir, being a terribly shy and private individual-
But for you, mon petit ami, I shall make an exception!

+[Actually, I came here to speak to the Admiral.]
->Theodosia_Enters

+[I don't care about your gloves! A man is dead!]
->Theodosia_Enters


+[This is going to revolutionise fashion!]
Precisely, mon chéri! You clearly have a good sense of style, despite your <i>hideous</i> attire.
->Theodosia_Enters



=Theodosia_Enters
Sir Maximillian, it seems that the Admiral requested to speak to the gentleman here before his- departure. #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral
Apparently he had a story he felt important to share with the Weekly Wag- and the wider world. 


A journalist, you say? #speaker:??? #layout:left #portrait:theladyneutral
How enterprising of Charles to summon a newspaperman to Wenchwatch Hall in anticipation of his own murder.
Such was the nature of my late husband- always a most forward-thinking fellow.


Lady Hold! You should be resting! #speaker:Dorothy Tendwell #layout:right #portrait:maidshock

Dorothy, I assure you, I am most well rested. One of the few benefits of widowhood is a night's sleep free of <i>affectionate</i> advances from one's husband. #speaker: Theodosia Hold #layout:left #portrait:theladynegative

Yes, Lady Hold, of course. #speaker:Dorothy Tendwell #layout:right #portrait:maidnegative
Introducing Lady Theodosia Hold, sir. Wife of the late Admiral. #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral

A pleasure to meet you, sir. I am an avid fan of your publication. Oft does Dorothy reads to me from its pages. I would read it myself, but female literacy is so terribly unfashionable at present. #speaker: Theodosia_Hold #layout:left #portrait:theladypositive
The exposé last month regarding Lady Sullivan's indecent table manners was <i>particularly</i> delectable.
Most wonderful that you are here. One imagines you'll be taking my portraiture for your next issue, yes?


+[What exactly happened here?]
I'm afraid it's exactly as Lady Theodosia said, sir. #speaker:Dorothy Tendwell #layout:right #portrait:maidnegative
->Murder_Most_Foul

+[The Admiral was murdered? Where is the killer?]
Well, sir- we don't know. #speaker:Dorothy Tendwell #layout:right #portrait:maidnegative
->Murder_Most_Foul

+[A murder? This is going to get me on the front page!]
Sir, I would remind you that the Hold family are in mourning. I would suggest tempering your excitement. #speaker:Dorothy Tendwell #layout:right
But yes, it is true.
->Murder_Most_Foul


=Murder_Most_Foul
The Admiral was- struck down in the early hours of the morning by an unkown assailant. 
Worse yet, the body was discovered by the Admiral's son, little Avery Hold. #portrait:maidnegative
The poor boy is traumatised. To discover your father in such a- after he-
Oh, even the <i>thought</i> of it-!

For heaven's sake, girl, pull yourself together! You should know how terribly gauche it is for servants to express sentiment. #speaker: Theodosia Hold #layout:left #portrait:theladynegative

Sincerest apologies, Lady Hold. #speaker:Dorothy Tendwell #layout:right #portrait:maidnegative
As I was saying, it was Avery who discovered the Admiral in his- current condition.
Unfotunately, the killer escaped before Avery could catch sight of them.
->Questioning



=Questioning


*[Everyone in Wenchwatch Hall last night is a suspect! Who was here last night?]
~question_tracker += 1
There were five of us in total in Wenchwatch Hall last night, not including the Admiral.
There was Sir Maximillian, who you have met-

<i>Maximillian blows you a kiss.</i> #speaker: Maximillian Hold #layout:left  #portrait:foppositive
Lady Theodosia Hold, who you have also met- #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral

<i>Theodosia stares at you, statuesque. It's slightly unnerving.</i> #speaker:Theodosia Hold #layout:left #portrait:theladyneutral
And myself. #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral
Not currently present is Avery Hold, the son of Lady Theodosia and the Admiral, and the stable hand, one Ms. Lavender Ditch.

A most peculiar woman is Ms. Ditch. To so enthusiastically spend one's days coated in horse manure - it defies all reason!  #speaker:Theodosia_Hold #layout:left #portrait:theladyneutral
Not to mention her general demeanour, dear Theodosia. So sullen- so uncouth! #speaker:Maximillian_Hold #layout:left  #portrait:fopnegative
 ... Ms. Ditch likes to keep to herself. You will likely find her out in the stables tending to the horses. #speaker:Dorothy Tendwell #layout:right #portrait:maidnegative
->Questioning



*[Have the authorities been alerted?]
~question_tracker += 1
The town constable has been alerted. But I'm afraid he's rather- idle- in his duties, and not known for having an eye for investigation. #speaker:Dorothy Tendwell #layout:right #portrait:maidneutral
I very much doubt he'll be capable of tracking down the killer...
->Questioning


*[Has anyone questioned Avery in detail about what he saw?]
I found Avery standing over the Admiral just before sunrise- hardly three hours ago. I didn't think it proper to further traumatise the poor child. #speaker: Ms. Tendwell #layout:right
~question_tracker += 1
->Questioning


*{question_tracker == 3}[I'll solve this murder! I'll put the perpetrator on the front page!]


A front page article, you say?  #speaker: Maximillian Hold #layout:left  #portrait:fopshock
How scandalous! #speaker:Theodosia Hold #layout:left #portrait:theladypositive
How thrilling! #speaker: Maximillian Hold #layout:left  #portrait:fopshock
I am quite sure there is nothing on this Earth Charles would want more than to be prominently featured in a paper of note. Dead or no. #speaker:Theodosia Hold #layout:left #portrait:theladypositive

->Outro

=Outro
If you are quite set on helping us, sir, I shall make sure everyone remains at Wenchwatch Hall as you carry out your investigation.  #speaker:Dorothy Tendwell #layout:right
I would recommmend you take note of anything that may be of use to you as you explore the manor and question its inhabitants.

~Transition("Intro Study","Intro Table")

Welcome to <i>The Scandal in Ink</i>! #speaker: Tutorial #portrait:Default
 <i>Let's go over the basics of how how to play.
 <i>Start by scanning your mouse around the environment in search of clues.
 <i>You should see a magnifying glass pop up over any items of note.
 <i>Click on those items with the left mouse button to learn more.
->DONE












