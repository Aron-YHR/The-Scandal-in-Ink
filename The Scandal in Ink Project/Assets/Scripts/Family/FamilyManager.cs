using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor.Experimental.GraphView;
using UnityEngine;
using UnityEngine.UI;

public class FamilyManager : Singleton<FamilyManager>
{

    //public ButtonInputs buttonInputs;
    public BillsScript billsScript;

    [SerializeField] private TextMeshProUGUI costText;
    [SerializeField] private List<TextMeshProUGUI> expenseValueTextList;
    private int cost;

    private void OnEnable()
    {
        cost = billsScript.Rent;
        costText.text = cost.ToString();
    }

    public void SetExpenses()
    {
        for (int i = 0; i < expenseValueTextList.Count; i++)
        {

        }
    }

    public void SelectExpenseOption(string expenseOption, bool isChosen)
    {
        expenseOption = expenseOption.ToLower();

        switch (expenseOption)
        {
            case "food":
                if (isChosen) cost += billsScript.Food;
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

        costText.text = cost.ToString();
    }


}

