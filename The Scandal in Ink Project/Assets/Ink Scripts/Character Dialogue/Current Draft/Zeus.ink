INCLUDE Secrets.ink


->INTRO
===INTRO===
{
 -horse_talk == true: <i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
 ->DONE


 -else: <i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
-> Start

}

=== Start ===
~horse_talk = true

+[Did you see who came through here last night, boy?]
{
 -brooch == true: 
 <i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
->Horse_Stage_1
 
 -else: 
<i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
->Horse_Stage_1
}


+[<i>Leave the horse alone.</i>]
->Leave_Horse_Alone




===Horse_Stage_1===

+[Just tell me, it'll stay between you and me!]
<i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
->Horse_Stage_2

+[Tell me what you know, horse!]
<i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
->Horse_Stage_2

+[<i>Leave the horse alone.</i>]
->Leave_Horse_Alone


===Horse_Stage_2===

+[Please, Mr. Horse? I'll buy you a carrot.]
->Horse_Talks


+[Start talking, horse! Or you and me are taking a trip to the glue factory!]
->Horse_Talks

+[<i>Leave the horse alone.</i>]
->Leave_Horse_Alone




===Horse_Talks===
<i>A voice inside your head tells you this isn't going anywhere.</i> #speaker:Voice of Reason #portrait:Default

+[Dear God, I'm losing my mind!]
That appears to be the case, my dear fellow. #speaker:Zeus The Horse #portrait:horseneutral
->Leave_Horse_Alone

+[Fine, keep your secrets! I'll solve this all on my own!]
<i>Neigh!</i> #speaker:Zeus The Horse #portrait:horseneutral
->Leave_Horse_Alone


===Leave_Horse_Alone===

{

 -brooch == true: ->DONE
 
 -else: ->Horse_Saddle

}


==Horse_Saddle==
<i>As you go to leave, you notice something unusual protruding from the horse's saddle.</i>


+[<i>Inspect the saddle</i>]
~TransitionWithoutAudio("Stables", "Saddle Pocket")
->DONE

+[<i>Leave it for now.]
->DONE



