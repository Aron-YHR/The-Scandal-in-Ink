using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class ItemDetails
{
    public ItemName itemName;

    public Sprite itemIcon;

    public bool isEvidence;

    [TextArea]
    public string itemInfo;
}
