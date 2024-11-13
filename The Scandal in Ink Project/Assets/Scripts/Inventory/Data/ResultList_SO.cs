using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "ResultList_SO", menuName = "Inventory/ResultList_SO")]

public class ResultList_SO : ScriptableObject
{
    [Header("Main Case")]
    public List<Result> resultsList = new List<Result>();
    [Header("Side Case")]
    public List<SideCaseResult> sideCaseResultsList = new List<SideCaseResult>();

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

[System.Serializable]
public class SideCaseResult
{
    public int index;
    public string newsTitle;
    [TextArea]
    public string letter;
}
