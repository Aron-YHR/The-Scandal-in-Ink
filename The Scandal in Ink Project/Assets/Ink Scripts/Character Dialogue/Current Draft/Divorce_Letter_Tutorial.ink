INCLUDE Secrets.ink


~clue_found = true
A torn letter penned by Admiral Hold filing for divorce from his wife, Theodosia. The letter is dated the day before his death. The reason for the divorce is not listed. Or perhaps it was written on the other half of the page...? #speaker: Divorce Petition

<i>You found a clue! #speaker: Tutorial
<i>Clues are automatically added to the journal upon discovery.
~Transition("Intro Table", "Intro Clues Page")

<i>This is the "Clues" page of your Journal.
<i>Clues are an item or environmental element that relate to the case. 
<i>However, be aware that not all clues are of equal value! Some clues may lead to dead ends in your investigation. Others may lead you down the wrong path entirely!
<i>It's up to you to discern which clues are of value, and which can be disregarded.


{
-statement_found and clue_found: 
~Transition("Intro Clues Page", "Intro Deduction")
->DONE

-else: 
~Transition("Intro Clues Page", "Intro Table")
->DONE
}