using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SaveLoadManager : Singleton<SaveLoadManager>
{
    private string jsonFolder;

    private List<ISaveable> saveableList = new List<ISaveable>();

    private Dictionary<string, GameSaveData> saveDataDict = new Dictionary<string, GameSaveData>();

    protected override void Awake()
    {
        base.Awake();
        jsonFolder = Application.persistentDataPath + "/SAVE/";
    }

    private void OnEnable()
    {
        
    }

    private void OnDisable()
    {

    }

    public void Register(ISaveable saveable)
    {
        saveableList.Add(saveable);
    }

    
}