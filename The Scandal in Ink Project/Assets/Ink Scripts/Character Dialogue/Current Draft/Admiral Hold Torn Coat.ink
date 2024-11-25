INCLUDE Secrets.ink


{
-statement_found == false: ->Tutorial_Clue

-else: ->Basic_Clue

}






===Basic_Clue===
Something was forcefully torn from the Admiral's coat. #speaker: Admiral's Body #layout:right #portrait:Default
~unlockNPC("Admiral_Charles_Hold") 
~ unlockStatement("Admiral_Charles_Hold", 2)
+[Continue.]
->DONE





===Tutorial_Clue===
Something was forcefully torn from the Admiral's coat. #speaker: Admiral's Body #layout:right #portrait:Default
~unlockNPC("Admiral_Charles_Hold") 
~ unlockStatement("Admiral_Charles_Hold", 2)
You've found some evidence! #speaker:Tutorial
~statement_found = true
Anything information of importance to the case is automatically added to the journal.
~Transition("Table", "Intro People Page")
This is the "People" page of your Journal.
Information relating to people involved in the case is stored here.
As you interview suspects, important statements they give will be unlocked on the right-hand side of the page.
However, be wary of taking all statements at face value! Suspects may lie or obscure the truth for a variety of reasons. It's up to you to discern the truth from the lies!


{
-statement_found and clue_found: 
~Transition("Intro People Page", "Intro Deduction")
->DONE

-else: 
~Transition("Intro People Page", "Table")
->DONE
}