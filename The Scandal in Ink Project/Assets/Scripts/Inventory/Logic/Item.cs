using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemName itemName;

    public void ItemClicked()
    {
        // add it into journal and remove it in environment
        InventoryManager.Instance.AddItem(itemName);

        DialogueManager.GetInstance().SetVariableState("1", true);

        this.gameObject.SetActive(false);
    }
}
