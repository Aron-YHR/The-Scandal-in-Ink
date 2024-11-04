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

    public TMP_Dropdown nameDropdown;
    public TMP_Dropdown locationDropdown;
    public TMP_Dropdown motiveDropdown;
    public TMP_Dropdown escapeDropdown;

    public List<Sprite> caseImgList;

    public Image caseImage;

    // Start is called before the first frame update
    void Start()
    {
        nameDropdown.AddOptions(deductionData.GetNPCNameList());
        locationDropdown.AddOptions(deductionData.GetLocationList());
        motiveDropdown.AddOptions(deductionData.GetMotiveList());
        escapeDropdown.AddOptions(deductionData.GetWayOfEscapeList());
   
    }

    public void ChangeImage()
    {
        caseImage.sprite = deductionData.nameAndImageList[nameDropdown.value].image;
    }

    public void GoToFamily()
    {
        var currentScene = SceneManager.GetActiveScene().name;
        TransitionManager.Instance.Transition(currentScene, "Family");  
    }

    public void SubmitNews()
    {
        int totalIncome = 0;
        if (deductionData.nameAndImageList[nameDropdown.value].isTheRightAnswer)
        {
            totalIncome += deductionData.nameAndImageList[nameDropdown.value].amount
            + deductionData.locationList[locationDropdown.value].amount
            + deductionData.motiveList[motiveDropdown.value].amount
            + deductionData.wayOfEscapeList[escapeDropdown.value].amount;
            
        }
        else
        {
            totalIncome += deductionData.nameAndImageList[nameDropdown.value].amount;
        }

        InventoryManager.Instance.journal.deductionChoices.Add(nameDropdown.value);
        InventoryManager.Instance.journal.deductionChoices.Add(locationDropdown.value);
        InventoryManager.Instance.journal.deductionChoices.Add(motiveDropdown.value);
        InventoryManager.Instance.journal.deductionChoices.Add(escapeDropdown.value);

        Debug.Log(totalIncome);

        InventoryManager.Instance.billsScript.Salary = totalIncome;
        
    }

}
