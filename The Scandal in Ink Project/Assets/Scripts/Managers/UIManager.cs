using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class UIManager : Singleton<UIManager>
{
    public FamilyMember_SO familyMembers;

    public GameObject showcasePanel;
    public Image itemShowcaseImg;
    public TextMeshProUGUI infoText;
    public TextMeshProUGUI itemNameText;

    public bool isUIOpened = false;

    private void OnEnable()
    {
        EventHandler.StartNewGameEvent += OnStartNewGameEvent;
    }

    private void OnDisable()
    {
        EventHandler.StartNewGameEvent -= OnStartNewGameEvent;
    }

    private void OnStartNewGameEvent()
    {
        SetOriginalData();
    }

    private void SetOriginalData() // set the family data to original ones
    {
        for (int i = 0; i<familyMembers.familyMembersList.Count; i++)
        {
            familyMembers.familyMembersList[i].wellbeing = 50;
            familyMembers.familyMembersList[i].isDead = false;
            familyMembers.familyMembersList[i].state = LifeState.Unwell;
        }
    }

    public void ActivateJournal()
    {
        isUIOpened = true;
    }

    public void DesactivateJournal()
    {
        isUIOpened = false;
    }

    public void SetItemShowcase(ItemDetails itemDetails)
    {
        isUIOpened = true;
        showcasePanel.gameObject.SetActive(true);
        itemShowcaseImg.sprite = itemDetails.itemIcon;
        infoText.text = itemDetails.itemInfo;
        itemNameText.text = itemDetails.itemName.ToString();
    }

}
