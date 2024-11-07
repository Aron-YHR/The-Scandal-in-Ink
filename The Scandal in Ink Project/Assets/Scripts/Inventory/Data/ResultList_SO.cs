using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "ResultList_SO", menuName = "Inventory/ResultList_SO")]

public class ResultList_SO : ScriptableObject
{
    public List<Result> resultsList = new List<Result>();
    
}

[System.Serializable]
public class Result
{
    public int index;
    public string newsTitle;
    public Sprite newsImg;
    [TextArea]
    public List<string> lettersList = new List<string>();
}
