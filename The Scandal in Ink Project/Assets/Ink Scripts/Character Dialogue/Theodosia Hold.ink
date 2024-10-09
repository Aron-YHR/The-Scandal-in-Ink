INCLUDE Secrets.ink

VAR argument = false



-> Start

=== Start ===

{!Should you intend to take my portraiture for your publication, I must insist you use take it from my left side. It is most uncouth for a lady of status to expose her right cheek to the great unwashed. } #speaker: Theodosia Hold




+[Where were you when the murder occurred?]

I retired to my chambers quite early to indulge in a most ladlylike fit of weeping.
You may confer with my maid to confirm the details.
->Night_Of_Murder



+[Have you noticed anything suspicious?]
One cannot help but notice that the bird bath is rather blood-soaked. I must have Dorothy speak to the gardener of the matter.
->Suspicions



+[How was your relationship with your husband?]
A most invasive question to ask a freshly widowed wife, though I shall allow it. I find the outrageous gall of you newspaper men quite charming.
-> Relationship



+ {test_secret} [I know about your affair with Maximillian.]
Hm? What's this? I am quite sure I have no idea what you mean, good fellow
->DONE

+ {test_secret} [Did you know your husband was planning to divorce you?]
Oh yes, I intuited as much. A well-bred woman has an instinct for her husband's flights of fancy.
I am quite sure he would have abandoned the idea entirely, had he not perished.
->Divorce



+ {test_secret} [Do you know Ms. Ditch and Ms. Treadwell are in a relationship?]
The maid and the stable hand? Ensnared in a Sapphic scandal? How curious! How queer!
->Start


+[<i> Examine the suspect. </i>]
->Examination



+[Leave]
->DONE



=== Relationship ===

+[Was Charles a good husband?]
Charles performed his marital duties adequately. He provided a modest dwelling-place, a small allowance to keep me adorned in the most recent fashions, and rarely spoke. A most desirable quality in a husband. He also begot a male heir. A most sensible decision on his part. Eldest daughters are somewhat vulgar, wouldn't you agree?
-> Eldest_Daughter

+[Did you love Charles?]
Certainly <i>not</i>! 
The exchange of love tokens and flowery letters is acceptable during courtship. Perhaps even for the first six weeks of a marriage. However, love between spouses of any greater duration is exceptionally garish. 
One would risk being mistaken for a prostitute, or a mistress of poor breeding.
->Relationship

+[You don't seem particularly sad that Charles is dead.]
Do you expect keening and caterwauling of me, sir? What am I, Irish?
A widow must be demure in the face of death. It is one's duty to maintain the dignity of the family name, as it is Charles' duty to provide for our family. He did the latter relatively adequately, and I must do the same.
->Relationship

+[Let's talk about something else]
->Start

=Eldest_Daughter

+[My eldest child is a girl.]
My deepest sympathies. 
->Relationship

+[That's horrendous. I love my daughter with all my heart!]
Expressing parental affection so blatantly? How quaint! The eccentricities of the common folk never cease to amaze!
-> Relationship

+[Let's move on.]
->Relationship











=== Night_Of_Murder ===


+[Why were you crying?]
I was engaged in vigorous conversation with my husband Charles. This was before he died, you see.
I do believe the conversation overwhelmed my feminine sensibilities and drove me to tears. A foolish decision on my part to engage in such activity. It is most harmful to a lady's health to engage in any activity which can be considered <i>vigorous</i>.
~argument = true
->Night_Of_Murder

+{argument}[What were you and Charles arguing about?]
Oh, matters of a marital nature. Such was the banality of the subject that I was driven to a fit of tears. Entirely too dull for publication, I assure you.
->Night_Of_Murder

+[Why should I confer with your maid?]
She was present for my initial hysterics. One must admit she performed her duties most admirably. She escorted me to my chambers and went to her own quarters upon my request. Crying in front of one's staff should be avoided at all cost. It is terribly European.
->Night_Of_Murder

+[When did you discover the body?]
Ms. Tendwell interrupted my private weeping to inform me that Charles had been slain. It is terribly inappropriate to interrupt another's private weeping. However, given the occassion, I believe Ms. Tendwell acted appropriately.
->Night_Of_Murder

+[Let's talk about something else.]
->Start 

  



===Suspicions===
->DONE


===Examination===

+[Examine her hands.]
<i> Her gloves are a pristine white. You notice that they are monogrammed. They bear the initials "M.H".</i>
->Examination

+[Examine her face]
<i> Her face is well painted, but not garishly so. Her lipstick is a dull rouge.</i>
-> Examination

+[Examine her clothing]
<i> Her attire is undeniably stylish. She's the best dressed widow you've ever seen. </i>
-> Examination

+[Return to the conversation]
->Start


===Divorce===



+{test_secret} [But you were sleeping with his brother!]
And we can be most certain that Charles had a litany of his own lovers and companions, as is the case with most men of his rank.
It is entirely appropriate for a lady in such a situation to find herself a discrete companion of her own.
Charles understood this, one is quite sure. Love affairs and adultery are concerns for the common man. The aristocracy have greater troubles to consider.
He would have come to this realisation himself. I am quite sure he would.
->Start

+[Let's talk about something else]
->Start







