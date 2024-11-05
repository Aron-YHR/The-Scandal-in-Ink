using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class InkExternalFunctions
{
    public void Bind(Story story)
    {
        // bind unlockStatement funtion in current story
        story.BindExternalFunction("unlockStatement", (string npcName, int index) 
            => InventoryManager.Instance.UnlockStatementsInJournal(npcName, index));
        story.BindExternalFunction("unlockItem",(string name) => UnlockItemInTheScene(name));
    }

    public void Unbind(Story story)
    {
        // unbind the function
        story.UnbindExternalFunction("unlockStatement");
        story.UnbindExternalFunction("unlockItem");
    }

    public void BindTransition(Story story)
    {
        story.BindExternalFunction("Transition", (string from, string to) =>
        {
            TransitionManager.Instance.Transition(from, to);
        });
    }

    public void UnbindTransition(Story story)
    {
        story.UnbindExternalFunction("Transition");
    }

    public void UnlockItemInTheScene(string name)
    {
        ItemDetails item = InventoryManager.Instance.itemData.itemDetailsList.Find(i => i.itemName.ToString() == name);
        InventoryManager.Instance.AddItem(item);
    }


}
