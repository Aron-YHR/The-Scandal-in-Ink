using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour
{
    public NPCDetails npcDetails;

    public void Start()
    {
        npcDetails = InventoryManager.Instance.npcData.GetNPCDetails(npcDetails.npcName);
        //npcDetails.npcPortrait = npc.npcPortrait;
        //npcDetails.npcIcon = npc.npcIcon;
        //npcDetails.location = npc.location;
        //npcDetails.npcInfo = npc.npcInfo;
        //npcDetails.npcStatements = new List<string>();
    }

    public void NPCClicked()
    {
        // add it into journal
        InventoryManager.Instance.AddNPC(npcDetails);

    }
}
