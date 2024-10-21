using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "New Inventory", menuName = "Inventory/New Inventory")]
public class Inventory : ScriptableObject
{
    // evidence or items observed
    public List<ItemDetails> itemList = new List<ItemDetails>(); 
    // NPC iteracted
    public List<NPCDetails> npcList = new List<NPCDetails>();


}
