using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class InventoryManager : Singleton<InventoryManager>
{
    //[SerializeField] private List<ItemName> itemList = new List<ItemName>();

    public ItemDataList_SO itemData;
    public Inventory journal;

    [Header("UI")]
    public GameObject slotGrid;
    public Slot slotPrefab;
    public DetailPanel detailPanel;

    private void OnEnable()
    {
        RefreshItem();

        EventHandler.StartNewGameEvent += OnStartNewGameEvent;

    }

    private void OnDisable()
    {
        EventHandler.StartNewGameEvent -= OnStartNewGameEvent;
    }

    private void OnStartNewGameEvent()
    {
        journal.itemList.Clear();
        RefreshItem();
    }

    public void AddItem(ItemDetails itemDetails) // to be optimized
    {
        
        //Debug.Log(journal.itemList.Contains(item));
        if (journal.itemList.Find(i => i.itemName == itemDetails.itemName) == null )
        {   
            //ItemDetails item = itemData.GetItemDetails(itemName);
            //journal.itemList.Add(itemData.GetItemDetails(itemName));
            journal.itemList.Add(itemDetails);

            EventHandler.CallIsClickedEvent(itemDetails); // if observation was not empty, this event won't work

            RefreshItem();
        }
    }

    public static void CreateNewItem(ItemDetails item)
    {
        Slot newItem = Instantiate(Instance.slotPrefab, Instance.slotGrid.transform);

        newItem.slotItem = item;
        newItem.slotImage.sprite = item.itemIcon;
    }

    public static void RefreshItem() // to be optimized
    {
        for(int i = 0; i < Instance.slotGrid.transform.childCount; i++)
        {
            if(Instance.slotGrid.transform.childCount == 0) break;
            Destroy(Instance.slotGrid.transform.GetChild(i).gameObject);
        }

        for(int i = 0;i< Instance.journal.itemList.Count; i++)
        {
            CreateNewItem(Instance.journal.itemList[i]);
        }
    }

    public static void UpdateItemDetailsPanel(ItemDetails itemDetails)
    {
        Instance.detailPanel.SetItemIcon(itemDetails.itemIcon);
        Instance.detailPanel.SetItemName(itemDetails.itemName.ToString());
        Instance.detailPanel.SetItemInfo(itemDetails.itemInfo);
    }
}
