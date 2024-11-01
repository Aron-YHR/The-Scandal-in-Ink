EXTERNAL Transition(from,to)

Welcome to Wenchwatch Hall, sir. How might I be of assistance? #speaker: Ms. Tendwell

->Start

=== Start ===

+[I'm here to see the Admiral Charles Hold.]
Oh- I see. Was the Admiral- expecting you, sir?
It's just- I wasn't aware of your visit.
->Dorothy


+[I'm with the Weekly Wag! Here for the Admiral's big scoop!]
Oh, you're with the Weekly Wag! Of course, of course. The Admiral told me you'd be coming.
->Dorothy

*[And who might you be?]
Dorothy Tendwell, sir. Lady's maid to Lady Theodosia Hold. How might I assist you?
->Start

+[Skip. Testing Only.]
~Transition("BeforeGame","Table")
->DONE






+[Skip to mission]
~Transition("BeforeGame","Table")
->DONE





===Dorothy===
Well, sir- I'm afraid you won't be able to speak with the Admiral today.
Unfortunately, he is somewhat- Um- 
He is <i>indisposed</i> at present.


+[Indisposed? What do you mean?]
Well- you see, sir-
Heavens, I'm not quite sure how to explain-
You see- the Admiral- he's-
Perhaps it's best you just see for yourself...
~Transition("BeforeGame","Table")
->Body



+[Lady, I'm not leaving here without a story!]
I see.
Well, seeing as you are so <i>insistent</i> I suppose it's best you see for yourself.
If you'd follow me.
~Transition("BeforeGame","Table")
->Body


+[I really must insist on seeing him. I won't get paid without a story.]
Well- if that is the case- perhaps it's best you see for yourself.
Please, sir- follow me.
~Transition("BeforeGame","Table")
->Body




===Body===
As you can see sir, the Admiral is quite-
Well, he's rather-

<i>Dead!</i> #speaker: Maximillian_Hold #layout:left
<i>Dispatched!</i>
<i>Deceased!</i>


Maximillian Hold, sir. Younger brother of the- <i>late</i> Admiral Charles Hold. #speaker: Ms. Tendwell #layout:right

Oh, dear brother! To be struck down so tragically! #speaker: Maximillian_Hold #layout:left 
So ignobly!
Surrounded by such <i>horrendous</i> décor!
<i>Ah!</i> I do not know how my heart can bear such an onslaught of travesties!
Oh- Dorothy dearest, who is this drably dressed fellow?

This here is a journalist, sir. He says he's from the Weekly Wag. #speaker: Ms. Tendwell #layout:right
Before his- expiration.

The Weekly Wag, you say? #speaker: Maximillian_Hold #layout:left
Ah! So the press have finally caught wind of my daring new fashion statement:
<i>Gloveless</i> outfits!
I know what you're thinking! To expose one's hands to the elements, to the streets, to common folk! 'Tis a style controversy in the making! 
But I assure you, six months from now, every man about town shall be following suit.
I am not typically one for interviews, being a terribly shy and private individual-
But for you, mon cheri, I shall make an exception!

+[Actually, I was invited here by the Admiral.]


+[I don't care about your gloves! A man is dead!]



+[This is going to revolutionise high fashion. I'm giving you a front page spread!]





->DONE

