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
        story.BindExternalFunction("unlockNPC", (string name) => UnlockNPC(name));
    }

    public void Unbind(Story story)
    {
        // unbind the function
        story.UnbindExternalFunction("unlockStatement");
        story.UnbindExternalFunction("unlockItem");
        story.UnbindExternalFunction("unlockNPC");
    }

    public void BindTransition(Story story)
    {
        story.BindExternalFunction("Transition", (string from, string to) =>
        {
            TransitionManager.Instance.Transition(from, to);
        });

        story.BindExternalFunction("TransitionWithoutAudio", (string from, string to) =>
        {
            TransitionManager.Instance.TransitionWithoutAudio(from,to);
        });

        story.BindExternalFunction("TransitionToMainGame", (string from, string to) =>
        {
            TransitionManager.Instance.CutsceneTransition(from, to, 8);
        });
    }

    public void UnbindTransition(Story story)
    {
        story.UnbindExternalFunction("Transition");
        story.UnbindExternalFunction("TransitionWithoutAudio");
        story.UnbindExternalFunction("TransitionToMainGame");
    }

    public void UnlockItemInTheScene(string name)
    {
        ItemDetails item = InventoryManager.Instance.itemData.itemDetailsList.Find(i => i.itemName.ToString() == name);
        InventoryManager.Instance.AddItem(item);
    }

    public void UnlockNPC(string name)
    {
        NPCDetails npc = InventoryManager.Instance.npcData.npcDetailsList.Find(i => i.npcName.ToString() == name);
        InventoryManager.Instance.AddNPC(npc);
    }


}
