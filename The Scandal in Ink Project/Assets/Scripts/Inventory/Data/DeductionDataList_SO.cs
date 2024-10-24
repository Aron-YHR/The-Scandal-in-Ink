using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "DeductionDataList_SO", menuName = "Inventory/DeductionDataList_SO")]

public class DeductionDataList_SO : ScriptableObject
{ 
    //public List<string> npcNameList = new List<string>();
    public List<string> locationList = new List<string>();
    public List<string> motiveList = new List<string>();
    public List<string> wayOfEscapeList = new List<string>();


    //public Dictionary<string,Sprite> caseImageDic = new Dictionary<string,Sprite>();
    public List<NameAndImagePair> nameAndImageList = new List<NameAndImagePair>();
    
    public List<string> GetNPCNameList()
    {
        List<string> list = new List<string>();
        for(int i = 0; i < nameAndImageList.Count; i++)
        {
            list.Add(nameAndImageList[i].name);
        }
        return list;
    }
}

[System.Serializable]
public class NameAndImagePair
{
    public string name;
    public Sprite image;

}
