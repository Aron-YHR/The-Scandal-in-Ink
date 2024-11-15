using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class ItemDetails
{
    public ItemName itemName;

    public Sprite itemIcon;
    public int value;

    [Header("Change ink variable or not")]
    public bool isEvidence;

    [Header("Not recorded in Journal; Disappear")]
    public bool notRecordedInJournal;
    public bool notPickedUp;

    //public bool toBeUnlocked;

    [TextArea]
    public string itemInfo;
}
