using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class NPCSlot : MonoBehaviour
{
    public NPCDetails npcDetails;

    public Image slotImage;

    public TextMeshProUGUI slotText;

    public void SlotOnClicked()
    {
        InventoryManager.UpdateNPCDetailsPanel(npcDetails);
    }
}
