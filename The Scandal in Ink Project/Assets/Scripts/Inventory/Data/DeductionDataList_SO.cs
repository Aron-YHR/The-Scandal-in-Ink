using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "DeductionDataList_SO", menuName = "Inventory/DeductionDataList_SO")]

public class DeductionDataList_SO : ScriptableObject
{ 
    //public List<string> npcNameList = new List<string>();
    public List<SentenceAndAmountPair> locationList = new List<SentenceAndAmountPair>();
    public List<SentenceAndAmountPair> motiveList = new List<SentenceAndAmountPair>();
    public List<SentenceAndAmountPair> wayOfEscapeList = new List<SentenceAndAmountPair>();
    public List<SentenceAndAmountPair> weaponsList = new List<SentenceAndAmountPair>();


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

    public List<string> GetLocationList()
    {
        List<string> list = new List<string>();
        for (int i = 0; i < locationList.Count; i++)
        {
            list.Add(locationList[i].text);
        }
        return list;
    }

    public List<string> GetMotiveList()
    {
        List<string> list = new List<string>();
        for (int i = 0; i < motiveList.Count; i++)
        {
            list.Add(motiveList[i].text);
        }
        return list;
    }

    public List<string> GetWayOfEscapeList()
    {
        List<string> list = new List<string>();
        for (int i = 0; i < wayOfEscapeList.Count; i++)
        {
            list.Add(wayOfEscapeList[i].text);
        }
        return list;
    }
    public List<string> GetWeaponsList()
    {
        List<string> list = new List<string>();
        for (int i = 0; i < weaponsList.Count; i++)
        {
            list.Add(weaponsList[i].text);
        }
        return list;
    }
}

[System.Serializable]
public class NameAndImagePair
{
    public string name;
    public Sprite image;
    public int amount;
    //public bool isTheRightAnswer;
}

[System.Serializable]
public class SentenceAndAmountPair
{
    public string text;
    public int amount;
}
