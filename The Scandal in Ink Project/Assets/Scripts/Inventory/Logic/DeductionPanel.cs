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
        locationDropdown.AddOptions(deductionData.locationList);
        motiveDropdown.AddOptions(deductionData.motiveList);
        escapeDropdown.AddOptions(deductionData.wayOfEscapeList);

        
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

}
