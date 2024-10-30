INCLUDE secrets.ink
~door_key = true
<i>The door to Max's room. It is locked.
<i>Perhaps Maximillian will let you in. Or perhaps one of the servants will have a key...

+{door_key}[<i>Unlock the door.</i>]
<i>The door unlocks with a satisfying click.</i>
~Transition("Door","Max's Room")
->DONE

+[<i>Return to the reception.]
~Transition("Door","Reception")
->DONE



