using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "CombinationList_SO", menuName = "Inventory/CombinationList_SO")]
public class CombinationList_SO : ScriptableObject
{
    public List<Combination> combinationsList = new List<Combination>();
}

[System.Serializable]
public class Combination
{
    public int killerIndex;
    public int motiveIndex;
    public int resultIndex;
}
