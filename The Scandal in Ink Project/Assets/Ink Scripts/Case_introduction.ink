EXTERNAL Transition(from,to)
EXTERNAL unlockItem(name)
EXTERNAL unlockNPC(name)
EXTERNAL TransitionToMainGame(from,to)


VAR question_tracker = 0



~TransitionToMainGame("BeforeGame","Intro Reception")
~unlockNPC("Admiral_Charles_Hold")
Welcome to Wenchwatch Hall, sir. How might I be of assistance? #speaker: Dorothy Tendwell #portrait:maidneutral



->Start

=== Start ===

+[I'm here to see Admiral Charles Hold.]
Oh- I see. Was the Admiral- expecting you, sir? #speaker: Dorothy Tendwell #portrait:maidshock
It's just- I wasn't aware of your visit.
++[The Admiral asked me to speak with him. I received this letter from him last night.]
I- I see. How peculiar.
->Dorothy


+[I'm with the Weekly Wag! And I'm here for the Admiral's big scoop!]
Oh, you're with the Weekly Wag! How thrilling! The Lady of the House is such a fan of your paper! #speaker: Dorothy Tendwell #portrait:maidpositive
But if you'll excuse me, sir- how have you already heard the news? #speaker: Dorothy Tendwell #portrait:maidneutral
++[The Admiral asked me to speak with him. I received this letter from him last night.]
I- I see. How peculiar. #speaker: Dorothy Tendwell #portrait: maidshock
->Dorothy

*[And who might you be?]
Dorothy Tendwell, sir. Lady's maid to Lady Theodosia Hold. How might I assist you?
->Start

+[Skip. Testing Only.]
~Transition("Intro Reception","Table")
->DONE






===Dorothy===
Well, sir- I'm afraid you won't be able to speak with the Admiral today. #speaker: Dorothy Tendwell #portrait:maidnegative
Unfortunately, he is somewhat- Um- 
He is <i>indisposed</i> at present.


+[Indisposed? What do you mean?]
Well- you see, sir-
Heavens, I'm not quite sure how to explain-
You see- the Admiral- he's-
Perhaps it's best you just see for yourself...
~Transition("Intro Reception","Table")
->Body



+[Lady, I'm not leaving here without a story!]
...I see.
Well, seeing as you are so <i>insistent</i> I suppose it's best you see for yourself.
If you'd follow me.
~Transition("Intro Reception","Intro Table")
->Body


+[I really must insist on seeing him. I won't get paid without a story.]
Well- if that is the case- perhaps it's best you see for yourself.
Please, sir- follow me.
~Transition("Intro Reception","Intro Table")
->Body




===Body===
As you can see sir, the Admiral is quite-
Well, he's slightly-

<i>Dead!</i> #speaker: ??? #layout:left #portrait:fopneutral
~Transition("Intro Table","Intro Study")
<i>Dispatched!</i> 
<i>Deceased!</i>


Maximillian Hold, sir. Younger brother of the- <i>late</i> Admiral Charles Hold. #speaker: Ms. Tendwell #layout:right #portrait:fopneutral

Oh, dear brother! To be struck down so tragically! #speaker: Maximillian_Hold #layout:left  #portrait:fopneutral
So ignobly!
Surrounded by such <i>horrendous</i> furnishings!
<i>Ah!</i> I do not know how my heart can bear such an onslaught of travesties!
Oh- Dorothy dearest, who is this drably dressed fellow?

This here is a journalist, sir. He says he's from the Weekly Wag. #speaker: Ms. Tendwell #layout:right #portrait:maidneutral

The Weekly Wag, you say? #speaker: Maximillian_Hold #layout:left #portrait:fopshock
Ah! So the press have finally caught wind of my daring new fashion statement: <i>Gloveless</i> hands! #speaker: Maximillian_Hold #layout:left #portrait:foppositive
I know what you're thinking! To expose one's hands to the elements, to the streets, to common folk! 'Tis a controversy in the making! 
But I assure you, six months from now, every man about town shall be following suit!
I am not typically one for interviews, sir, being a terribly shy and private individual-
But for you, mon chéri, I shall make an exception!

+[Actually, I came here to speak to the Admiral.]
->Theodosia_Enters

+[I don't care about your gloves! A man is dead!]
->Theodosia_Enters


+[This is going to revolutionise fashion!]
Precisely, mon chéri! You clearly have a good sense of style, despite your <i>hideous</i> attire.
->Theodosia_Enters



=Theodosia_Enters
Sir Maximillian, it seems that the Admiral requested to speak to the gentleman here before his- departure. #speaker: Ms. Tendwell #layout:right
Apparently he had a story he felt important to share with the Weekly Wag- and the wider world. 


A journalist, you say? #speaker: Theodosia_Hold #layout:left
How enterprising of Charles to summon a newspaperman to Wenchwatch Hall in anticipation of his own murder.
Such was the nature of my late husband- always a most forward-thinking fellow.


Lady Hold! You should be resting! #speaker: Ms. Tendwell #layout:right

Dorothy, I assure you, I am most well rested. One of the few benefits of widowhood is a night's sleep free of <i>affectionate</i> advances from one's husband. #speaker: Theodosia_Hold #layout:left
A pleasure to meet you, sir. I am an avid fan of your publication. Dorothy oft reads to me from its pages. I would read it myself, but female literacy is so terribly unfashionable at present.
The exposé last month regarding Lady Sullivan's indecent table manners was <i>particularly</i> delectable.
Most wonderful that you're here. One imagines you'll be taking my portraiture for your next issue, yes?


+[What exactly happened here?]
I'm afraid it's exactly as Lady Theodosia said, sir. #speaker: Ms. Tendwell #layout:right
->Murder_Most_Foul

+[The Admiral was murdered? Where is the killer?]
Well, sir- we don't know. #speaker: Ms. Tendwell #layout:right
->Murder_Most_Foul

+[A murder? This is going to get me on the front page!]
Sir, I would remine you that the Hold family are in mourning. I would suggest tempering your excitement. #speaker: Ms. Tendwell #layout:right
But yes, it is true.
->Murder_Most_Foul


=Murder_Most_Foul
The Admiral was- struck down in the early hours of the morning by an unkown assailant. Worse yet, the body was discovered by the Admiral's son, little Avery Hold.
The poor boy is traumatised. To discover your father in such a- after he-
Oh, even the <i>thought</i> of it-!

For heaven's sake, girl, pull yourself together! You should know how terribly gauche it is for servants to express sentiment. #speaker: Theodosia_Hold #layout:left

Sincerest apologies, Lady Hold. #speaker: Ms. Tendwell #layout:right
As I was saying, it was Avery who discovered the Admiral in his- current condition.
Unfotunately, the killer escaped before Avery could catch sight of them.
->Questioning



=Questioning


*[Everyone in Wenchwatch Hall last night is a suspect! Who was here last night?]
~question_tracker += 1
There were five of us in total in Wenchwatch Hall last night, not including the Admiral.
There was Sir Maximillian, who you have met-

<i>Maximillian blows you a kiss.</i> #speaker: Maximillian Hold #layout:left

Lady Theodosia Hold, who you have also met- #speaker: Ms. Tendwell #layout:right

<i>Theodosia stares at you, statuesque, as if preparing for her portrait.</i> #speaker:Theodosia Hold  #layout:left
And myself. #speaker: Ms. Tendwell #layout:right
Not currently present is Avery Hold, the son of Lady Theodosia and the Admiral, and the stable hand, one Ms. Lavender Ditch.

A most peculiar woman. To so enthusiastically spend one's days coated in horse manure - it defies all reason!  #speaker: Theodosia_Hold #layout:left
Not to mention her general demeanour, dear Theodosia. So sullen- so uncouth! #speaker: Maximillian_Hold #layout:left
 ... Ms. Ditch likes to keep to herself. You will likely find her out in the stables tending to the horses. #speaker: Ms. Tendwell #layout:right

->Questioning



*[Have the authorities been alerted?]
~question_tracker += 1
The town constable has been alerted. But I'm afraid he's rather- idle- in his duties, and not known for having an eye for investigation. #speaker: Ms. Tendwell #layout:right
I very much doubt he'll be capable of tracking down the killer...
->Questioning


*[Has anyone questioned Avery in detail about what he saw?]
I found Avery standing over the Admiral just before sunrise- hardly three hours ago. I didn't think it proper to further traumatise the poor child. #speaker: Ms. Tendwell #layout:right
~question_tracker += 1
->Questioning


*{question_tracker == 3}[I'll solve this murder! I'll make sure the perpetrator is brought to justice!]


A front page article, you say?  #speaker: Maximillian Hold #layout:right
How scandalous! #speaker: Theodosia_Hold #layout:left
How thrilling! #speaker: Maximillian Hold #layout:right
I am quite sure there is nothing on this Earth Charles would want more than to be prominently featured in a paper of note. Dead or no. #speaker: Theodosia_Hold #layout:left

->Outro

=Outro
If you are quite set on helping us, sir, I shall make sure everyone remains at Wenchwatch Hall as you carry out your investigation.  #speaker: Ms. Tendwell #layout:right
I would recommend you carry out a thorough investigation of the Admiral's- ahem- body-
It might help you with your investigation.

+[<i>Begin your investigation.</i>]
~Transition("Intro Study","Table")
->DONE










