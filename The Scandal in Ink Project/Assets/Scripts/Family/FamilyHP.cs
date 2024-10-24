using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class FamilyHP : MonoBehaviour
{
    /*[SerializeField, Range(0, 2)]  int FamilyNum;
    [SerializeField] float sizeScaler;
    public wellbeingScript FamilyWellbeing;*/

    public FamilyMember familyMember;
    public Image memberImage;
    public TextMeshProUGUI letterStatement;

    [SerializeField]private int wellbeingChange;

    private void OnEnable()
    {
        familyMember = FamilyManager.Instance.familyMember_SO.familyMembersList.Find(i => i.name == familyMember.name);
        Debug.Log(familyMember.state);
        UpdateMemberUI();
        wellbeingChange = 0;
    }

    public void CalculateWellbeingChange(int num)
    {
        wellbeingChange += num;
    }

    public void ChangeWellbeing()
    {
        familyMember.wellbeing += wellbeingChange;
        if(familyMember.wellbeing > 100) familyMember.wellbeing = 100;
        else if(familyMember.wellbeing < 0) familyMember.wellbeing = 0;

        // change family member state
        familyMember.state = familyMember.GetLifeState(familyMember.wellbeing);
        UpdateMemberUI();
    }

    public void UpdateMemberUI()
    {
        memberImage.sprite = familyMember.familyMemberImages[(int)familyMember.state];
        letterStatement.text = familyMember.name + FamilyManager.Instance.letterStatements.statementsList[(int)familyMember.state];
    }



    
}
