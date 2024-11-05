using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "CutsceneDataList_SO", menuName = "Cutscene/CutsceneDataList_SO")]

public class CutsceneDataList_SO : ScriptableObject
{ 
    public List<CutsceneContent> list = new List<CutsceneContent>();
    public List<AfterGameContent> aftergameContentlist = new List<AfterGameContent> ();
}

[System.Serializable]
public class CutsceneContent
{
    public TextAsset inkJsonForCutscene;
    [TextArea]
    public List<string> lettersList;
}

[System.Serializable]
public class AfterGameContent
{
    [TextArea]
    public string letterText;
    public int relativeNumber;
    public string relativeTag;
}
