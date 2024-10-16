using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "DeductionDataList_SO", menuName = "Inventory/DeductionDataList_SO")]

public class DeductionDataList_SO : ScriptableObject
{
    public List<string> npcNameList = new List<string>();
    public List<string> locationList = new List<string>();
    public List<string> motiveList = new List<string>();
    public List<string> wayOfEscapeList = new List<string>();
}
