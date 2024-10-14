using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemDetails itemDetails;

    public void Start()
    {
        itemDetails = InventoryManager.Instance.itemData.GetItemDetailsByString(gameObject.name);
    }

    public void ItemClicked()
    {
        // add it into journal and remove it in environment
        InventoryManager.Instance.AddItem(itemDetails);

        if(itemDetails.isEvidence)
        DialogueManager.GetInstance().SetVariableState(itemDetails.itemName.ToString(), itemDetails.isEvidence);

        this.gameObject.SetActive(false);
    }
}
