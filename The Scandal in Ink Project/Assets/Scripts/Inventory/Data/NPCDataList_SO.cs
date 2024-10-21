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
        return new NPCDetails( npcDetailsList.Find(i => i.npcName == npcName));
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


    public List<Statement> npcStatements;

    public NPCDetails(NPCDetails npcDetails)
    {
        this.npcName = npcDetails.npcName;
        this.npcIcon = npcDetails.npcIcon;
        this.npcPortrait = npcDetails.npcPortrait;
        this.location = npcDetails.location;
        this.npcInfo = npcDetails.npcInfo;
        this.npcStatements = new List<Statement>();

        for (int i = 0; i < npcDetails.npcStatements.Count; i++)
        {
            this.npcStatements.Add(new Statement(npcDetails.npcStatements[i].statementLine,false));
        }
    }
}

[System.Serializable]
public class Statement
{
    [TextArea]
    public string statementLine;

    public bool isUnlocked;

    public Statement(string statementLine, bool isUnlocked)
    {
        this.statementLine = statementLine;
        this.isUnlocked = isUnlocked;
    }
}
