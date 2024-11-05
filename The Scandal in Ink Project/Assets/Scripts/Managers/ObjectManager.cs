using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectManager : Singleton<ObjectManager>
{
    //public ItemDataList_SO itemDataList_SO;

    /// <summary>
    /// this dict save all items' states in the scene, true = not be isclicked, false = already clicked, false in the scene
    /// </summary>
    private Dictionary<ItemName,bool> itemAvailableDict = new Dictionary<ItemName,bool>();

    private void OnEnable()
    {
        EventHandler.BeforeSceneUnloadEvent += OnBeforeSceneUnloadEvent;
        EventHandler.AfterSceneLoadedEvent += OnAfterSceneLoadedEvent;
        EventHandler.IsClickedEvent += OnIsClickedEvent;

        EventHandler.StartNewGameEvent += OnStartNewGameEvent;
    }


    private void OnDisable()
    {
        EventHandler.BeforeSceneUnloadEvent -= OnBeforeSceneUnloadEvent;
        EventHandler.AfterSceneLoadedEvent -= OnAfterSceneLoadedEvent;
        EventHandler.IsClickedEvent -= OnIsClickedEvent;

        EventHandler.StartNewGameEvent -= OnStartNewGameEvent;
    }

    private void OnStartNewGameEvent()
    {
        itemAvailableDict.Clear();
        /*foreach (ItemDetails item in itemDataList_SO.itemDetailsList)
        {
            itemAvailableDict.Add(item.itemName, !item.toBeUnlocked);
        }*/
    }

    private void OnBeforeSceneUnloadEvent()
    {
        foreach (var item in FindObjectsByType<Item>(FindObjectsSortMode.InstanceID))
        {
            if (!itemAvailableDict.ContainsKey(item.itemDetails.itemName))
            {
                itemAvailableDict.Add(item.itemDetails.itemName, true); 
            }
        }
    }

    private void OnAfterSceneLoadedEvent()
    {
        // if item is in the dict, update the available state of it. if not, add it into dict

        foreach (var item in FindObjectsByType<Item>(FindObjectsSortMode.InstanceID))
        {
            if(!itemAvailableDict.ContainsKey(item.itemDetails.itemName))
            {
                itemAvailableDict.Add(item.itemDetails.itemName, true);
            }
            else
            {
                item.gameObject.SetActive(itemAvailableDict[item.itemDetails.itemName]);
            }
        }
    }

    private void OnIsClickedEvent(ItemDetails itemDetails)
    {
        // if item is clicked, set its state to false
        if (itemDetails != null)
        {
            itemAvailableDict[itemDetails.itemName] = false;
            //Debug.Log(itemAvailableDict);
        }
    }

    /*public void UnlockItemInTheScene()
    {
        foreach (var item in FindObjectsByType<Item>(FindObjectsSortMode.InstanceID))
        {
            Debug.Log(item.name);
        }
    }*/

}
