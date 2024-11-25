INCLUDE Secrets.ink

->INTRO
===INTRO===
#speaker:Avery Hold #layout:right #portrait:childneutral
-> Start


-> Start

=== Start ===

{TURNS_SINCE(-> INTRO) == 0: Salutations, good sir, on this most melancholy of morns! You are the purveyor of the printed word that hast descended upon my most humble abode, I presume?} 

+[Ms. Tendwell said you were first to discover the body. Is that true?]
'Tis true! As Theseus did witness his dear father Aegeus' perilous precipitation from the Acropolis, so too was I first to discover the end of our dear paterfamilias!  #speaker: Avery Hold #portrait:childnegative
Roused from slumber was I by a most discomfiting cacophony emanating from my progenitor's sanctum. Two voices, both brimming with vexation and trepidation, one clashing 'gainst t'other as Achilles did strike at Hector's shield! 
~ unlockStatement("Avery_Hold",1)
Compelled was I by divine providence to hasten to my father's side. Alas, I was too late. I came upon my father's bloodied form, his body and spirit cleft in twain, ne'er to be made whole. 
And thus was my juvenescence brought to a tragic close. ->Night_Of_Murder


//CHANGE THIS TO A PLUS IF YOU IMPLEMENT DOROTHY CHATTING WITH YOU!
*[Kid, I can't understand a single word you're saying.]
->Call_Dorothy

*{jam_scone}[Avery, why was there a jam scone in your pocket?]
Ah, yes. The jam scone. A confection I once coveted highly. Too highly...
You see, in truth, 'twas my father's scone, which I purloined in a moment of avarice.
For my misdeed, my father did hand down a most severe punishment. The confiscation of my most treasured possession...
My copy of Alexander Pope's seminal translation of <i>The Iliad</i>.
~ unlockStatement("Avery_Hold", 7)
~avery_book_confession = true
#portrait:childnegative
A rare disturbance between my father and I. Most inflamed was I that he would dare deprive me of my most treasured manuscript.
Yet in light of recent events, it doth seem such a petty squabble... ->Start

+[Tell me about your family life.]
Pray tell, what precisely intrigues you so? -> Relationship


*{iliad_confiscated and not avery_book_confession}[Did your father confiscate your book?]
Ah, yes. A rare disturbance between my father and I. Most inflamed was I that he would dare deprive me of my most treasured manuscript.
~avery_book_confession = true
~ unlockStatement("Avery_Hold", 7)
Yet in light of recent events, it seems such a petty squabble...
->Start

+{not avery_cried}[It was you! You killed the Admiral!]
Am I to understand, sir that, you intend to level an accusation of patricide against me? #portrait:childshock
For what reason?
->Accuse

+[<i> Examine the suspect more closely. </i>]
<i> You subtly inspect Avery for clues.</i>
->Examination

+[<i>Leave.</i>]
~dorothy_present=false
->DONE




===Night_Of_Murder===

*[So, you heard an argument in your father's study?]
Correct.
**[But he was already dead by the time you entered?]
Correct again. A most apt- and tragic- abridgement. ->Night_Of_Murder

+[What was the argument about?]
Alas, so impassioned had this fatal tête-à-tête become that it had devolved into a deadly conflagration before I could the study.
Thus the subject matter eluded me. Confound these juvenile feet! Would that I were blessed with the nimble stride of Hermes! ->Night_Of_Murder

+[Who was at the scene of the crime?]
First, Dorothy came to my side, dressed in naught but a nightie! Then came dear Mother, and some time after her, my Dear uncle. 
~ unlockStatement("Avery_Hold", 5)
~ unlockStatement("Avery_Hold", 6)
Ms. Lavender Ditch, devoted ostler to the family horses, was not present. ->Night_Of_Murder

+[Was the murderer still in the room?]
Yes, although their countenance I could not make out. In the window were they framed, their back turned. 
~ unlockStatement("Avery_Hold", 2)
Naught could I do but watch as the dastardly assailant did defenestrate themselves and abscond into the dark! ->Night_Of_Murder

+[Did you notice anything unusual about the body?]
Only the familial emblem brazenly torn from the admiralty's coatee. I can only conjecture that the brigand is some sort of larcenist, intent on trafficking our familial coat of arms.
But to dispatch my noble Father... Would a petty thief truly debauch their mortal souls for mere coin? ->Night_Of_Murder

+[Let's talk about something else.]
As Heracles did heed Eurystheus' commands, so too shall I comply.->Start 

===Relationship===

+[Were you and your father close?]
Icarus was I to my father's Daedalus. Great knowledge did he impart to me. I loved him dearly. 
Alas, a subversion of the tragic tale! 'Tis now my Icarus destined to behold Daedalus' terrible fall!
->Relationship

+[Did you have a happy family life before this?]
Ah, so vivid seem those halcyon days of yore! Most ebullient was the noble house of Wenchwatch Hall heretofore. I remember it as though 'twere only yesterday.

Yes, a most agreeable household. Father & mother did tend to my every need, their happy matrimony the cornerstone of our familial bliss.
Mother and uncle shared an ardour for the equestrian arts. Their hebdomadary treks astride the stallions in our stables brought them much joy.
~ unlockStatement("Avery_Hold", 4)
~ unlockStatement("Avery_Hold", 3)
And the fraternal bond between dear father and uncle? 'Twas nigh unshakeable! Often did they exchange good-natured bon mots and rapier repartees! But ne'er could their sibling bond be put asunder.
Naught but the icy hand of death could accomplish such a feat... ->Relationship

+[Did your father treat the servants kindly?]
Most propitious were the servile sentiments towards the Admiral. Ne'er once did I hear Ms. Tendwell nor Ms. Ditch speak ill of dear Father, but many's the time did they venerate his good name.->Relationship

+[Let's talk about something else.]
Of course. I shall acquiesce to your every whim.->Start

===Call_Dorothy===
Oft is it that this damnable jejune tongue of mine does confound the guests of Wenchwatch Hall. //If it would please you, Ms. Tendwell can act as a dragoman of sorts, if you wish? A translator?

+[What the hell does that even mean?!]
I can only apologise, sir - I will do my best to communicate succinctly. -> Start

+[Why you no speak good English, kid?!]
I do not know, sir! Truly, it is a terrible aggrievement for me as much as you. Confound my lack of oratorical ability!-> Start

===Iliad_Confiscated

/* +[And that's why you killed him, isn't it Avery?! You killed your father in a fit of rage! J'accuse!]
...
->Crying

+[The Iliad? You're seriously reading the Iliad?]
TBC
->Start

+[Hmm, fascinating. I have no idea what that is.]
TBC
->Start

+[Never mind.]
->Start */




=Crying
... #portrait:childshock
~avery_cried = true
Waaaaaaaah! Waaaaaaaaaaah! Dorothy! Mommy! #portrait:childnegative
He's scaring meeeeee! 
<i>WAAAAAAAAH!</i>

+[Oh shit.]
WAAAAAAAAAAAAAAAAAAAAAAAAAAAAH!
-> You_Fucked_Up

+[Wait wait wait! Don't cry! I was only joking, I swear!]
WAAAAAAAAAAAAAAAAAAAAAAAAAAAAH!
-> You_Fucked_Up

+[Spare me your crocodile tears, you patricidal maniac! You're going away for a long time!]
...
WAAAAAAAAAAAAAAAAAAAAAAAAAAAAH!
-> You_Fucked_Up

+[<i>Run away.</i>]
A moment of your time, if you please. #speaker:Dorothy Tendwel #layout:left #portrait:maidnegative
-> You_Fucked_Up

=You_Fucked_Up
Sir. I would recommend you cease bothering the young master. <i>Immediately</i>. The young master did not kill his father, as you suggest. He is <i>eight</i>. I will not tolerate further suggestions to the contrary. #speaker:Dorothy Tendwel #layout:left #portrait:maidnegative
*[Yes ma'am. Sorry ma'am. Sorry Avery.]
'Tis quite alright sir. I am prone to these fulminations of emotion. Such is the malediction of youth. #speaker: Avery Hold #layout:right #portrait:childneutral
**[Let's talk about something else.]
Indeed. ->Start

===Examination===

+[Examine his hands.]
<i> His fingertips seems slightly sticky. You think he may have recently been eating something covered in jam. </i> ->Examination

+[Examine his face.]
<i> His cheeks are stained red. You think he may have been crying recently. </i> -> Examination

+[Examine his clothing.]
<i> He has been dressed in appropriate mourning attire. However, you notice that Avery appears to be carrying something in his back pocket.</i>
<i> You think you might be able to grab it, if you're careful...</i> ->Pickpocket


+[Return to the conversation]
<i> You return to your conversation with the unusually verbose child.</i> -> Start


=Pickpocket

+[<i>Pickpocket Avery.</i>]
~Transition("Reception","Avery Pocket")
->DONE

+[<i>Leave it for now.</i>]
You leave it for the time being.
->Examination



===Accuse===

+{avery_book_confession}[Your father took your book, and you killed him for it!]
->Iliad_Confiscated.Crying

+[I have no proof, but I'll find some! And then you'll hang, kid!]
If this be a jape, 'tis a jape made in remrkably poor taste, sir. ->Start

+[Never mind. Forget I said anything.]
A most difficult charge to pretermit, though I shall do my best. ->Start



