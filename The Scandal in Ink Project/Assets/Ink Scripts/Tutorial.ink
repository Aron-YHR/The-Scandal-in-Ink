EXTERNAL Transition(from,to)
EXTERNAL unlockItem(name)
EXTERNAL unlockNPC(name)
EXTERNAL TransitionToMainGame(from,to)

VAR question_tracker = 0




This is your journal. This is where statements from suspects in the manor will be recorded.#speaker:Tutorial
Evidence you find while exploring the manor will also be recorded in the journal on the "Observations" page.

~Transition("Intro Journal", "Intro Deduction")

This is the deduction page. This is where you put the evidence you gather during your investigation to use.
Use your gathered evidence to determine the correct answer for each question and reveal the murderer to the public!
Or at least, reveal whoever could <i>feasibly</i> be the murderer... 

"Mandatory" questions must be answered correctly to produce a publishable article.
"Optional" questions, while not essential to the article's success, will increase your overall pay if answered correctly.

There are also side scandala for you to discover in each case which, if you publish, can get you a little extra pay as well! 
Just be mindful that what you choose to reveal to the public will have consequences.
You may also choose to not publish a side scandal if its publication would have undesirable repercussions.
And should you fail to make enough money to support your family, there may well be severe personal consequences...
Good luck in your investigation! Investigating the Admiral's body would be a good place to begin...
~Transition("Intro Deduction", "Table")
->DONE