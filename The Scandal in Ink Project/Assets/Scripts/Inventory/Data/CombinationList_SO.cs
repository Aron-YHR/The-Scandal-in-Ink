using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "CombinationList_SO", menuName = "Inventory/CombinationList_SO")]
public class CombinationList_SO : ScriptableObject
{
    [Header("Main Case")]
    public List<Combination> combinationsList = new List<Combination>();
    [Header("Side Case")]
    public List<SideCaseCombination> sideCaseCombinationsList = new List<SideCaseCombination>();
}

[System.Serializable]
public class Combination
{
    public int killerIndex;
    public int motiveIndex;
    public int resultIndex;
}

[System.Serializable]
public class SideCaseCombination
{
    public int nameIndex_1;
    public int nameIndex_2;
    public int affairIndex;
    public int resultIndex;
}

