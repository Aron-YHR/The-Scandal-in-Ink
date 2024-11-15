using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;


public class DeductionPanel : MonoBehaviour
{
    public DeductionDataList_SO deductionData;
    public CombinationList_SO combinationData;
    public List<Sprite> caseImgList;
    public Image caseImage;

    [Header("Main Case")]
    public TMP_Dropdown nameDropdown;
    public TMP_Dropdown locationDropdown;
    public TMP_Dropdown motiveDropdown;
    public TMP_Dropdown escapeDropdown;
    public TMP_Dropdown weaponsDropdown;

    [Header("Side Case")]
    public TMP_Dropdown sideNameDropdown_1;
    public TMP_Dropdown sideNameDropdown_2;
    public TMP_Dropdown affairDropdown;
    public Toggle sideCaseToggle;



    // Start is called before the first frame update
    void Start()
    {
        nameDropdown.AddOptions(deductionData.GetNPCNameList());
        locationDropdown.AddOptions(deductionData.GetLocationList());
        motiveDropdown.AddOptions(deductionData.GetMotiveList());
        escapeDropdown.AddOptions(deductionData.GetWayOfEscapeList());
        weaponsDropdown.AddOptions(deductionData.GetWeaponsList());

        sideNameDropdown_1.AddOptions(deductionData.GetNameList());
        sideNameDropdown_2.AddOptions(deductionData.GetNameList());
        affairDropdown.AddOptions(deductionData.GetAffairList());
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

                InventoryManager.Instance.journal.mainCaseChoices = combinationData.combinationsList[i].resultIndex;
                
            }
            else if(nameDropdown.value == combinationData.combinationsList[i].killerIndex-1)
            {
                totalIncome += deductionData.nameAndImageList[nameDropdown.value].amount;
                InventoryManager.Instance.journal.mainCaseChoices = 0;
            }
        }

        if (sideCaseToggle.isOn)
        {
            for (int i = 0; i < combinationData.sideCaseCombinationsList.Count; i++)
            {
                if (sideNameDropdown_1.value == combinationData.sideCaseCombinationsList[i].nameIndex_1 - 1 && sideNameDropdown_2.value == combinationData.sideCaseCombinationsList[i].nameIndex_2 - 1 && affairDropdown.value == combinationData.sideCaseCombinationsList[i].affairIndex - 1)
                //(deductionData.nameAndImageList[nameDropdown.value].isTheRightAnswer)
                {
                    totalIncome += deductionData.nameList[sideNameDropdown_1.value].amount
                        + deductionData.nameList[sideNameDropdown_2.value].amount
                        + deductionData.affairList[affairDropdown.value].amount;

                    InventoryManager.Instance.journal.sideCaseChoices = combinationData.sideCaseCombinationsList[i].resultIndex;
                    
                }
                else
                {
                    InventoryManager.Instance.journal.sideCaseChoices = 0;
                }
            }
        }
        Debug.Log(InventoryManager.Instance.journal.mainCaseChoices);
        Debug.Log(InventoryManager.Instance.journal.sideCaseChoices);
        //InventoryManager.Instance.journal.deductionChoices.Add(nameDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(locationDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(motiveDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(escapeDropdown.value);
        //InventoryManager.Instance.journal.deductionChoices.Add(weaponsDropdown.value);

        Debug.Log(totalIncome);

        InventoryManager.Instance.billsScript.Salary = totalIncome;
        
    }

}
