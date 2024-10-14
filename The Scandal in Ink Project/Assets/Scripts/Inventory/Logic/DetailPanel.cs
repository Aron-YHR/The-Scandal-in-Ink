using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class DetailPanel : MonoBehaviour
{
    [SerializeField] private Image itemIcon;
    [SerializeField] private TextMeshProUGUI itemName;
    [SerializeField] private TextMeshProUGUI itemInfo;

    public void SetItemIcon(Sprite icon)
    {
        itemIcon.sprite = icon;
    }

    public void SetItemName(string name)
    {
        itemName.text = name;
    }

    public void SetItemInfo(string info)
    {
        itemInfo.text = info;
    }

    private void OnDisable()// to be optimized
    {
        SetItemIcon(null);
        SetItemName(null);
        SetItemInfo(null);
    }
}
