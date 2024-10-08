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

        this.gameObject.SetActive(false);
    }
}
