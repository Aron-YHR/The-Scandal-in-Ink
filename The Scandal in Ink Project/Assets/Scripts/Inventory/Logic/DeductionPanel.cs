using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditorInternal;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;


public class DeductionPanel : MonoBehaviour
{
    public DeductionDataList_SO deductionData;
    public CombinationList_SO combinationData;

    public TMP_Dropdown nameDropdown;
    public TMP_Dropdown locationDropdown;
    public TMP_Dropdown motiveDropdown;
    public TMP_Dropdown escapeDropdown;
    public TMP_Dropdown weaponsDropdown;

    public List<Sprite> caseImgList;

    public Image caseImage;

    // Start is called before the first frame update
    void Start()
    {
        nameDropdown.AddOptions(deductionData.GetNPCNameList());
        locationDropdown.AddOptions(deductionData.GetLocationList());
        motiveDropdown.AddOptions(deductionData.GetMotiveList());
        escapeDropdown.AddOptions(deductionData.GetWayOfEscapeList());
        weaponsDropdown.AddOptions(deductionData.GetWeaponsList());
   
    }

    public void ChangeImage()
    {
        caseImage.sprite = deductionData.nameAndImageList[nameDropdown.value].image;
    }

    public void GoToFamily()
    {
        var currentScene = SceneManager.GetActiveScene().name;
        TransitionManager.Instance.Transition(currentScene, "AfterGame");  
    }

    public void SubmitNews()
    {
        int totalIncome = 0;
        for (int i = 0; i < combinationData.combinationsList.Count; i++)
        {
            if (nameDropdown.value == combinationData.combinationsList[i].killerIndex-1 && motiveDropdown.value == combinationData.combinationsList[i].motiveIndex-1)
            //(deductionData.nameAndImageList[nameDropdown.value].isTheRightAnswer)
            {
                totalIncome += deductionData.nameAndImageList[nameDropdown.value].amount
                + deductionData.locationList[locationDropdown.value].amount
                + deductionData.motiveList[motiveDropdown.value].amount
                + deductionData.wayOfEscapeList[escapeDropdown.value].amount
                + deductionData.weaponsList[weaponsDropdown.value].amount;

                InventoryManager.Instance.journal.deductionChoices = combinationData.combinationsList[i].resultIndex;
            }
            else if(nameDropdown.value == combinationData.combinationsList[i].killerIndex-1)
            {
                totalIncome += deductionData.nameAndImageList[nameDropdown.value].amount;
                InventoryManager.Instance.journal.deductionChoices = 0;
            }
        }


        //InventoryManager.Instance.journal.deductionChoices.Add(nameDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(locationDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(motiveDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(escapeDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(weaponsDropdown.value);

        Debug.Log(totalIncome);

        InventoryManager.Instance.billsScript.Salary = totalIncome;
        
    }

}
