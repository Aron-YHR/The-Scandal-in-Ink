using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class InkExternalFunctions
{
    public void Bind(Story story)
    {
        // bind unlockStatement funtion in current story
        story.BindExternalFunction("unlockStatement", (string npcName, int index) => InventoryManager.Instance.UnlockStatementsInJournal(npcName, index));
    }

    public void Unbind(Story story)
    {
        // unbind the function
        story.UnbindExternalFunction("unlockStatement");
    }
}
