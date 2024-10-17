using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName = "NPCDataList_SO", menuName = "Inventory/NPCDataList_SO")]

public class NPCDataList_SO : ScriptableObject
{
    public List<NPCDetails> npcDetailsList;

    public NPCDetails GetNPCDetails(NPCName npcName)
    {
        return npcDetailsList.Find(i => i.npcName == npcName);
    }
    public NPCDetails GetNPCDetailsByString(string npcName)
    {
        return npcDetailsList.Find(i => i.npcName.ToString() == npcName);
    }
}

[System.Serializable]
public class NPCDetails
{
    public NPCName npcName;
    public Sprite npcIcon;
    public Sprite npcPortrait;

    public string location;

    [TextArea]
    public string npcInfo;

    [TextArea]
    public List<string> npcStatements;
}
