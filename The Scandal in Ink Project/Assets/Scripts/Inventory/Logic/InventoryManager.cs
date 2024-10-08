using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryManager : Singleton<InventoryManager>
{
    [SerializeField] private List<ItemName> itemList = new List<ItemName>();

    public ItemDataList_SO itemData;


    public void AddItem(ItemName itemName)
    {
        if (!itemList.Contains(itemName))
        { 
            itemList.Add(itemName);
            //TODO: UI display item
        }
    }
}
