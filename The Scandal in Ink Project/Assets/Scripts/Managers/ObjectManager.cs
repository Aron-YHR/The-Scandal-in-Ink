using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectManager : MonoBehaviour
{
    private Dictionary<ItemName,bool> itemAvailableDict = new Dictionary<ItemName,bool>();

    private void OnEnable()
    {
        EventHandler.BeforeSceneUnloadEvent += OnBeforeSceneUnloadEvent;
        EventHandler.AfterSceneLoadedEvent += OnAfterSceneLoadedEvent;
        EventHandler.IsClickedEvent += OnIsClickedEvent;
    }


    private void OnDisable()
    {
        EventHandler.BeforeSceneUnloadEvent -= OnBeforeSceneUnloadEvent;
        EventHandler.AfterSceneLoadedEvent -= OnAfterSceneLoadedEvent;
        EventHandler.IsClickedEvent -= OnIsClickedEvent;
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

}
