using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Slot : MonoBehaviour
{
    public ItemDetails slotItem;

    public Image slotImage;

    public void SlotOnClicked()
    {
        InventoryManager.UpdateItemDetailsPanel(slotItem);
    }
}
