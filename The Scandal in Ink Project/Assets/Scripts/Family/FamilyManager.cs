using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class FamilyManager : Singleton<FamilyManager>
{

    //public ButtonInputs buttonInputs;
    public BillsScript billsScript;
    public FamilyMember_SO familyMember_SO;
    public LetterStatements_SO letterStatements;

    //public List<int> wellbelingList;
    public List<FamilyHP> familyHPList;

    [SerializeField] private TextMeshProUGUI costText;
    [SerializeField] private TextMeshProUGUI SalaryPayText;
    [SerializeField] private TextMeshProUGUI extraPayText;
    [SerializeField] private TextMeshProUGUI savingsText;
    [SerializeField] private GameObject submitButton;

    //[SerializeField] private List<TextMeshProUGUI> expenseValueTextList;
    private int cost;
    private int totalIncome;

    private void Start()
    {
        /*wellbelingList = new List<int>();
        for (int i = 0; i < wellbelingList.Count; i++)
        {
            wellbelingList[i] = familyMember_SO.familyMembersList[i].wellbeing;
        }*/
        SalaryPayText.text = billsScript.Salary.ToString()+"s";
        extraPayText.text = billsScript.Misc_income.ToString()+"s";
        savingsText.text = billsScript.Savings.ToString() + "s";
    }

    private void OnEnable()
    {
        submitButton.SetActive(true);
        cost = billsScript.Rent;
        costText.text = cost.ToString()+"s";
    }

    public void SelectExpenseOption(string expenseOption, bool isChosen)
    {
        expenseOption = expenseOption.ToLower();

        switch (expenseOption)
        {
            case "food":
                if (isChosen) 
                { 
                    cost += billsScript.Food; 
                }
                else cost -= billsScript.Food;
                break;
            case "heat":
                if (isChosen) cost += billsScript.Heat;
                else cost -= billsScript.Heat;

                break;
            case "mines":
                if (isChosen) cost -= billsScript.Mines;
                else cost += billsScript.Mines;

                break;
            case "mills":
                if (isChosen) cost -= billsScript.Mills;
                else cost += billsScript.Mills;

                break;
            case "medicine":
                if (isChosen) cost += billsScript.Medicine;
                else cost -= billsScript.Medicine;

                break;
            case "schooling":
                if (isChosen) cost += billsScript.Schooling;
                else cost -= billsScript.Schooling;

                break;
        }

        costText.text = cost.ToString()+"s";
    }

    public void CalculateWellbeing(string expenseOption, bool isChosen)
    {
        expenseOption = expenseOption.ToLower();

        switch (expenseOption)
        {
            case "food":
                if (!isChosen)
                {
                    for (int i = 0; i < familyHPList.Count; i++)
                    {
                        familyHPList[i].CalculateWellbeingChange(-billsScript.GetImpact(expenseOption));
                    }
                }
                break;
            case "heat":
                if (!isChosen)
                {
                    for (int i = 0; i < familyHPList.Count; i++)
                    {
                        familyHPList[i].CalculateWellbeingChange(-billsScript.GetImpact(expenseOption));
                    }
                }
                break;
            case "mines":
                if (isChosen)
                {
                    familyHPList[1].CalculateWellbeingChange(-billsScript.GetImpact(expenseOption));
                }
                break;
            case "mills":
                if (isChosen)
                {
                    familyHPList[2].CalculateWellbeingChange(-billsScript.GetImpact(expenseOption));
                }
                break;
            case "medicine":
                if (isChosen)
                {
                    for (int i = 0; i < familyHPList.Count; i++)
                    {
                        familyHPList[i].CalculateWellbeingChange(billsScript.GetImpact(expenseOption));
                    }
                }
                break;
            case "schooling":
                // only for chidren
                if (isChosen)
                {
                    for (int i = 1; i < familyHPList.Count; i++)
                    {
                        familyHPList[i].CalculateWellbeingChange(billsScript.GetImpact(expenseOption));
                    }
                }
                break;
        }
    }

    public void SubmitBills()
    {
        //wScript.WellbeingSubmission();

        // change each family member state
        for (int i = 0; i < familyHPList.Count; i++)
        {
            familyHPList[i].ChangeWellbeing();
        }
        submitButton.SetActive(false);
    }


}

