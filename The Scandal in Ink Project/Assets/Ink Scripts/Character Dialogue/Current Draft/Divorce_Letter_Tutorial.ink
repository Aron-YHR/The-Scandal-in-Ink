INCLUDE Secrets.ink


~clue_found = true


You found a clue!
Clues are an item or part of the environment that relate to the case. They are automatically added to the journal upon discovery.





===Basic_Clue===
It appears that the Admiral was stabbed multiple times in the chest with something... particularly sharp. #speaker: Admiral's Body #layout:right #portrait:Default
~unlockNPC("Admiral_Charles_Hold") 
~ unlockStatement("Admiral_Charles_Hold", 1)
+[Continue.]
->DONE



===Tutorial_Clue===
You've found some evidence! #speaker:Tutorial
~statement_found = true
~unlockNPC("Admiral_Charles_Hold") 
~ unlockStatement("Admiral_Charles_Hold", 1)
Anything information of importance to the case is automatically added to the journal.
~Transition("Table", "Intro Clues Page")
This is the "People" page of your Journal.
Information relating to people involved in the case is stored here.
As you interview suspects, important statements they give will be unlocked on the right-hand side of the page.
However, be wary of taking all statements at face value! Suspects may lie or obscure the truth for a variety of reasons. It's up to you to discern the truth from the lies!


{
-statement_found and clue_found: 
~Transition("Intro Clues Page", "Intro Deduction")
->DONE

-else: 
~Transition("Intro Clues Page", "Table")
->DONE
}