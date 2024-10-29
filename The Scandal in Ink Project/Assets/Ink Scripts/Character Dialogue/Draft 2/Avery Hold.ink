INCLUDE Secrets.ink




-> Start

=== Start ===

Salutations to you, good sir, on this most melancholy of morns! You are the purveyor of the printed word that hast descended upon my most humble abode, I presume? #speaker: Avery Hold



+[Ms. Tendwell said you were first to discover the body. Is that true?]
'Tis true! As Theseus did witness his dear father Aegeus' perilous precipitation from the Acropolis, so too was I first to to witness the end of our dear paterfamilias. Roused from slumber was I by a most discomfiting cacophony emanating from my progenitor's sanctum. Two voices, both brimming with vexation and trepidation, one clashing 'gainst t'other as Achilles did strike at Hector's shield! Compelled was I by divine providence to hasten to my father's side. Alas, I was too late. I came upon my father's bloodied form, his body and spirit cleft in twain, ne'er to be made whole.
And thus was my juvenescence brought to a tragic close.
{dorothy_present: TEST}
->Night_Of_Murder

+[Kid, I can't understand a single word you're saying.]
->Call_Dorothy


+[Tell me about your family life.]
-> Relationship


+{avery_confiscated_item}[I know your father confiscated your copy of the Iliad.]
Ah, yes. A rare disturbance between my father and I. Most inflamed was I that he would dare deprive me of my most treasured manuscript.
Yet in light of recent events, it does seem such a petty squabble...
{dorothy_present: TEST}
->Iliad_Confiscated

+[<i> Examine the suspect more closely. </i>]
->Examination



+[Leave]
~dorothy_present=false
->DONE




===Night_Of_Murder===

*[So, you went to inspect an argument in your father's study, but he was dead by the time you got there. Is that right?]
Correct, a most apt abridgement.
{dorothy_present: TEST}
->Night_Of_Murder

+[What was the argument about?]
Alas, so impassioned had this fatal tête-à-tête become that it devolved into a deadly conflagration before I could reach the study.
Thus the subject matter eluded me. Confound these juvenile feet! Would that I were blessed with the nimble stride of Hermes!
{dorothy_present: TEST}
->Night_Of_Murder

+[Was the murderer still in the room?]
Yes, although their countenance I could not make out. In the window were they framed, their back turned. 
Naught could I do but watch as the dastardly assailant did defenestrate themselves and abscond into the dark!
{dorothy_present: TEST}
->Night_Of_Murder

+[Did you notice anything unusual about the body?]
Only the familial emblem brazenly torn from the admiralty's coatee. I can only conjecture that the brigand is some sort of larcenist, intent on trafficking our familial coat of arms.
But to dispatch my noble Father... Would a petty thief truly debauch their mortal souls for mere coin?
{dorothy_present: TEST}
->Night_Of_Murder


+[Let's talk about something else.]
As you say, sir.
->Start 

===Relationship===

+[Were you and your father close?]
Icarus was I to my father's Daedalus. Great knowledge did he impart to me. I did love him dearly. 
Alas, a subversion of the tragic tale! 'Tis now my Daedalus destined to behold his father's terrible fall.
{dorothy_present: TEST}
->Relationship

+[Did you have a happy family life before this?]
Ah, so vivid seem those halcyon days of yore! Most ebullient was the noble house of Wenchwatch Hall heretofore. I remember it as though 'twere only yesterday.
Ha! A mere jape to raise the spirit!
But yes, a most agreeable household. Father & mother did tend to my every need, their happy matrimony the cornerstone of our familial bliss.
Mother and uncle shared an ardour for the equestrian arts. Their hebdomadary treks astride the stallions in our stables brought them much joy.
And the fraternal bond between dear father and uncle? 'Twas nigh unshakeable! Often did they exchange good-natured bon mots and rapier repartees! But ne'er could their sibling bond be put asunder. Naught but the icy hand of death could accomplish such a feat...
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
Oft is it that this damnable jejune tongue of mine does confound the guests of Wenchwatch Hall. If it would please you, Ms. Tendwell can act as a dragoman of sorts, if you wish? A translator?

+[What the hell does that even mean?!]
I- shall call for Ms.Tendwell.
~dorothy_present = true
-> Start

+[Please do.]
Ms. Tendwell, would you be so kind as to act as a dagoman, so to speak?
~dorothy_present = true
-> Start

+[No, it's fine. I'll manage.]
~dorothy_present = false
Very well. However, should my ineloquent tongue befuddle you again, only speak! And I shall summon Ms. Tendwell anon.
-> Start

===Iliad_Confiscated

+[And that's why you killed him, isn't it Avery?! You killed your father in a fit of rage! J'accuse!]
...
->Crying

+[The Iliad? You're seriously reading the Iliad?]
TBC
->Start

+[Hmm, fascinating. I have no idea what that is.]
TBC
->Start

+[Never mind.]
->Start




=Crying
Waaaaaaaah! Waaaaaaaaaaah! Dorothy! Mommy! WAAAAAAAAH!

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
Sir. I would recommend you cease bothering the young master. Quickly. <i>Very</i> quickly. The young master did not kill his father, as you suggest. He is <i>eight</i>. And I don't appreciate the suggestion otherwise. #speaker Miss Ditch
+[Yes ma'am. Sorry ma'am. Sorry Avery.]
'Tis quite alright sir. I am prone to these fulminations of emotion. Such is the malediction of youth.
++[Let's talk about something else.]
Quite.
->Start

===Examination===

+[Examine his hands.]
<i> His fingertips seems slightly sticky. You think he may have recently been eating something covered in jam. </i>
->Examination

+[Examine his face.]
<i> His cheeks are stained red. You think he may have been crying recently. </i> 
-> Examination

+[Examine his clothing.]
<i> He has been dressed in appropriate mourning attire. </i> 
-> Examination


+[Return to the conversation]
-> Start


