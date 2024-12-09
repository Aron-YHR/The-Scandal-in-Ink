INCLUDE Secrets.ink


{
-statement_found == false: ->Tutorial_Clue

-else: ->Basic_Clue

}






===Basic_Clue===
<i>Something was forcefully torn from the Admiral's coat. #speaker: Admiral's Body #layout:right #portrait:Default
~unlockNPC("Admiral_Charles_Hold") 
~ unlockStatement("Admiral_Charles_Hold", 2)
+[Continue.]
->DONE





===Tutorial_Clue===
<i>Something was forcefully torn from the Admiral's coat.</i> #speaker: Admiral's Body #layout:right #portrait:Default
~unlockNPC("Admiral_Charles_Hold") 
~ unlockStatement("Admiral_Charles_Hold", 2)
<i>You've found some evidence! #speaker:Tutorial
~statement_found = true
<i>Anything information of importance to the case is automatically added to the journal.
~Transition("Intro Table", "Intro People Page")
<i>This is the "People" page of your Journal.
<i>Information relating to people involved in the case is stored here.
<i>As you interview suspects, important statements they give will be unlocked on the right-hand side of the page.
<i>However, be wary of taking all statements at face value! Suspects may lie or obscure the truth for a variety of reasons. It's up to you to discern the truth from the lies!


{
-statement_found and clue_found: 
~TransitionWithoutAudio("Intro People Page", "Intro Deduction")
->DONE

-else: 
~TransitionWithoutAudio("Intro People Page", "Intro Table")
->DONE
}