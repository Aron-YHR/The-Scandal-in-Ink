Hi, Mr. Stranger! #speaker:NPC Green #portrait:npc_green_neutral #layout:right
->main
=== main ===
How are you feeling today?
+[Happy]
    That makes me feel happy as well! #portrait:npc_green_happy
+[Sad]
    Oh, well that makes me sad too. #portrait:npc_green_sad

-Don't trust him, he's not a good person! #speaker:NPC_White #portrait:npc_white_neutral #layout:left

Well, do you have any more question? #speaker:NPC_Green #portrait:npc_green_neutral #layout:right
+[Yes]
    ->main
+[No]
    Goodbye, poor stranger! You don't have to run~
    -> END