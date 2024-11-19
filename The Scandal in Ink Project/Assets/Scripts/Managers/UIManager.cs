using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class UIManager : Singleton<UIManager>
{
    [Header("Family Default settings")]
    public int wellbeing;
    public LifeState lifeState;

    [Header("Font Setting")]
    public TMP_FontAsset font1;
    public TMP_FontAsset font2;
    public Toggle fontToggle;
    public TextMeshProUGUI fontShowcase;
    public GameObject dialogue;

    [Header("Icons")]
    public GameObject journalIcon;
    public GameObject menuIcon;

    [Header("Setting Panel")]
    public GameObject settingPanel;
    public Canvas uiCanvas;

    public FamilyMember_SO familyMembers;

    public GameObject showcasePanel;

    public GameObject putbackButton;
    public GameObject takeButton;

    public Image itemShowcaseImg;
    public TextMeshProUGUI infoText;
    public TextMeshProUGUI itemNameText;

    public bool isUIOpened = false;

    private GameObject currentItem;

    private void OnEnable()
    {
        EventHandler.StartNewGameEvent += OnStartNewGameEvent;
        //DesactiveIcons();
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
            familyMembers.familyMembersList[i].wellbeing = wellbeing;
            familyMembers.familyMembersList[i].isDead = false;
            familyMembers.familyMembersList[i].state = lifeState;
        }
    }

    public void LowSortOrder()
    {
        uiCanvas.sortingOrder = 0;
    }

    public void HighSortOrder()
    {
        uiCanvas.sortingOrder = 11;
    }

    public void ActiveIcons()
    {
        journalIcon.SetActive(true);
        menuIcon.SetActive(true);
    }

    public void DesactiveIcons()
    {
        journalIcon.SetActive(false);
        menuIcon.SetActive(false);
    }

    public void ActivateJournal()
    {
        isUIOpened = true;
    }

    public void DesactivateJournal()
    {
        isUIOpened = false;
    }

    public void SetItemShowcase(GameObject gameObject,ItemDetails itemDetails)
    {
        isUIOpened = true;

        currentItem = gameObject;

        showcasePanel.gameObject.SetActive(true);
        CameraFollowMouse.Instance.DesactivateMove();

        if(itemDetails.value > 0)
        {
            putbackButton.SetActive(true);
            takeButton.SetActive(true);
        }
        else
        {
            putbackButton.SetActive(false);
            takeButton.SetActive(false);
        }

        itemShowcaseImg.sprite = itemDetails.itemIcon;
        infoText.text = itemDetails.itemInfo;
        itemNameText.text = itemDetails.itemName.ToString().Replace("_", " ").FirstCharacterToUpper();
    }

    public void SetItemBack()
    {
        currentItem.GetComponent<Item>().isClicked = false;
        currentItem.GetComponent<Item>().SetOriginalPos();
        currentItem.SetActive(true);
    }

    public void KeepItem()
    {
        ItemDetails itemDetails = currentItem.GetComponent<Item>().itemDetails;
        InventoryManager.Instance.AddItem(itemDetails);
    }

    public void ChangeFontShowcase()
    {
        if(fontToggle.isOn)
        {
            fontShowcase.font = font2;
        }
        else
        {
            fontShowcase.font = font1;
        }
    }

    public void ApplyFontToUI()
    {
        if (fontToggle.isOn)
            ChangeFontForDialogue(font2);
        else
            ChangeFontForDialogue(font1);
    }

    public void ChangeFontForDialogue(TMP_FontAsset font)
    {
        for (int i = 0; i < DialogueManager.GetInstance().choices.Length; i++)
        {
            DialogueManager.GetInstance().choices[i].SetActive(true);
        }


        TextMeshProUGUI[] list = dialogue.GetComponentsInChildren<TextMeshProUGUI>();
        for(int i = 0; i < list.Length; i++)
        {
            list[i].font = font;
        }
    }


}
