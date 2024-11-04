INCLUDE Secrets.ink

->INTRO
===INTRO===
-> Start


-> Start

=== Start ===

{TURNS_SINCE(-> INTRO) == 0: Salutations to you, good sir, on this most melancholy of morns! You are the purveyor of the printed word that hast descended upon my most humble abode, I presume?} #speaker: Avery Hold


+[Ms. Tendwell said you were first to discover the body. Is that true?]
'Tis true! As Theseus did witness his dear father Aegeus' perilous precipitation from the Acropolis, so too was I first to to witness the end of our dear paterfamilias. 
Roused from slumber was I by a most discomfiting cacophony emanating from my progenitor's sanctum. Two voices, both brimming with vexation and trepidation, one clashing 'gainst t'other as Achilles did strike at Hector's shield! 
Compelled was I by divine providence to hasten to my father's side. Alas, I was too late. I came upon my father's bloodied form, his body and spirit cleft in twain, ne'er to be made whole.
And thus was my juvenescence brought to a tragic close.
~ unlockStatement("Avery_Hold",1)
->Night_Of_Murder

+[Kid, I can't understand a single word you're saying.]
->Call_Dorothy


+[Tell me about your family life.]
Pray tell, what exactly intrigues you so?
-> Relationship


*{avery_confiscated_item or iliad}[Did your father confiscate your copy of the Iliad.]
Ah, yes. A rare disturbance between my father and I. Most inflamed was I that he would dare deprive me of my most treasured manuscript.
Yet in light of recent events, it does seem such a petty squabble...
~avery_book_confession = true
->Start

+[It was you! You killed the Admiral!]
Am I to understand, sir that, you intend to level an accusation of patricide against me?
For what reason?
->Accuse

+[<i> Examine the suspect more closely. </i>]
<i> You subtly inspect Avery for clues.</i>
->Examination

+[Leave]
~dorothy_present=false
->DONE




===Night_Of_Murder===

*[So, you went to inspect an argument in your father's study, but he was dead by the time you got there. Is that right?]
Correct, a most apt abridgement.
->Night_Of_Murder

+[What was the argument about?]
Alas, so impassioned had this fatal tête-à-tête become that it devolved into a deadly conflagration before I could reach the study.
Thus the subject matter eluded me. Confound these juvenile feet! Would that I were blessed with the nimble stride of Hermes!
->Night_Of_Murder

+[Who was at the scene of the crime?]
First, Dorothy came to my side, dressed in naught but a nightie! Then came dear Mother, and some time after her, my Dear uncle. 
Ms. Lavender Ditch, devoted ostler to the family horses, was not present.
~ unlockStatement("Avery_Hold", 5)
->Night_Of_Murder

+[Was the murderer still in the room?]
Yes, although their countenance I could not make out. In the window were they framed, their back turned. 
Naught could I do but watch as the dastardly assailant did defenestrate themselves and abscond into the dark!
~ unlockStatement("Avery_Hold", 2)
{dorothy_present: TEST}
->Night_Of_Murder

+[Did you notice anything unusual about the body?]
Only the familial emblem brazenly torn from the admiralty's coatee. I can only conjecture that the brigand is some sort of larcenist, intent on trafficking our familial coat of arms.
But to dispatch my noble Father... Would a petty thief truly debauch their mortal souls for mere coin?
~unlockStatement("Admiral_Charles_Hold", 3)
->Night_Of_Murder

+[Let's talk about something else.]
As you say, sir.
->Start 

===Relationship===

+[Were you and your father close?]
Icarus was I to my father's Daedalus. Great knowledge did he impart to me. I loved him dearly. 
Alas, a subversion of the tragic tale! 'Tis now my Icarus destined to behold Daedalus' terrible fall!
{dorothy_present: TEST}
->Relationship

+[Did you have a happy family life before this?]
Ah, so vivid seem those halcyon days of yore! Most ebullient was the noble house of Wenchwatch Hall heretofore. I remember it as though 'twere only yesterday.
Yes, a most agreeable household. Father & mother did tend to my every need, their happy matrimony the cornerstone of our familial bliss.
Mother and uncle shared an ardour for the equestrian arts. Their hebdomadary treks astride the stallions in our stables brought them much joy.
And the fraternal bond between dear father and uncle? 'Twas nigh unshakeable! Often did they exchange good-natured bon mots and rapier repartees! But ne'er could their sibling bond be put asunder. Naught but the icy hand of death could accomplish such a feat...
~ unlockStatement("Avery_Hold", 3)
{dorothy_present: TEST}
->Relationship

+[Did your father treat the servants kindly?]
Most propitious were the servile sentiments towards the Admiral. Ne'er once did I hear Ms. Tendwell nor Ms. Ditch speak ill of dear Father, but many's the time did they venerate his good name.
{dorothy_present: TEST}
->Relationship

+[Let's talk about something else.]
Of course. I shall acquiesce to your every whim.
->Start

===Call_Dorothy===
Oft is it that this damnable jejune tongue of mine does confound the guests of Wenchwatch Hall. //If it would please you, Ms. Tendwell can act as a dragoman of sorts, if you wish? A translator?

+[What the hell does that even mean?!]
I- will do my best to communicate succinctly. -> Start

+[Yeah kid, why don't you speak English good?]
Very well. However, should my ineloquent tongue befuddle you again, only speak! And I shall summon Ms. Tendwell anon.
-> Start

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
...
Waaaaaaaah! Waaaaaaaaaaah! Dorothy! Mommy!
He said he's gonna hang meeeeee! 
WAAAAAAAAH!

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
Ahem.
-> You_Fucked_Up

=You_Fucked_Up
Sir. I would recommend you cease bothering the young master. <i>Immediately</i>. The young master did not kill his father, as you suggest. He is <i>eight</i>. I will not appreciate further suggestions to the contrary. #speaker Dorothy Tendwell
+[Yes ma'am. Sorry ma'am. Sorry Avery.]
'Tis quite alright sir. I am prone to these fulminations of emotion. Such is the malediction of youth. #speaker Avery Hold
++[Let's talk about something else.]
Indeed. ->Start

===Examination===

+[Examine his hands.]
<i> His fingertips seems slightly sticky. You think he may have recently been eating something covered in jam. </i> ->Examination

+[Examine his face.]
<i> His cheeks are stained red. You think he may have been crying recently. </i> -> Examination

+[Examine his clothing.]
<i> He has been dressed in appropriate mourning attire. However, you notice that Avery appears to be carrying something in his back pocket.</i>
<i> You think you might be able to grab it, if you'r careful...</i> -> Examination


+[Return to the conversation]
<i> You return to your conversation with the unusually verbose child.</i> -> Start



===Accuse===

+{avery_book_confession}[Your father took your book, and you killed him for it! You're going to the gallows, kid!]
->Iliad_Confiscated.Crying

+[I don't know why I think that, but I'll find proof! And then you'll hand, kid!]
If this be a jape, 'tis a jape made in remrkably poor taste, sir. ->Start

+[Never mind. Forget I said anything.]
A most difficult charge to pretermit, though I shall do my best. ->Start



