EXTERNAL Transition(from,to)

->Start

=== Start ===

Welcome to Wenchwatch Hall. You're from the Weekly Wag I presume? 
The Admiral has been expecting you.


+[I'm here to see the Admiral Charles Hold.]
->Dorothy


+[I'm here for the big scoop!]
->Dorothy

+[Skip. Testing Only.]
~Transition("BeforeGame","Table")
->DONE






+[Skip to mission]
~Transition("BeforeGame","Table")
->DONE



===Dorothy===
The Admiral mentioned that you would be coming.
I'm afraid you will not be able to speak with Admiral Hold today.
You see, the Admiral is currently somewhat- indisposed.


+[Indisposed? What do you mean?]
Well- you see-
Heavens, I'm not quite sure how to explain-
Perhaps it's best you see for yourself...
~Transition("BeforeGame","Study")
->Start



+[Lady, I'm not leaving here without a story!]
~Transition("BeforeGame","Table")
->DONE


+[I really must insist on seeing him. I won't get paid without a story.]
~Transition("BeforeGame","Table")
->DONE