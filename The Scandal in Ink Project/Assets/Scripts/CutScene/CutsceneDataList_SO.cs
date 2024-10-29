using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "CutsceneDataList_SO", menuName = "Cutscene/CutsceneDataList_SO")]

public class CutsceneDataList_SO : ScriptableObject
{ 
    public List<CutsceneContent> list = new List<CutsceneContent>();
}

[System.Serializable]
public class CutsceneContent
{
    public TextAsset inkJsonForCutscene;
    [TextArea]
    public List<string> lettersList;
}
