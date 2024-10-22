using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Windows;

public class ButtonInputs : MonoBehaviour
{
    public BillsScript bScript;
    public wellbeingScript wScript;

    public void SelectExpenseOption(string ExpenseOption)
    {
        ExpenseOption = ExpenseOption.ToLower();
        switch (ExpenseOption)
        {
            case "food":
                bScript.FoodBool = !bScript.FoodBool ;

                break;
            case "heat":
                bScript.HeatBool = !bScript.HeatBool;

                break;
            case "mines":
                bScript.MinesBool = !bScript.MinesBool;

                break;
            case "mills":
                bScript.MillsBool = !bScript.MillsBool;

                break;
            case "medicine":
                bScript.MedicineBool = !bScript.MedicineBool;

                break;
            case "schooling":
                bScript.SchoolingBool = !bScript.SchoolingBool;

                break;

        }
    }

    public void SubmitBills()
    {
        wScript.WellbeingSubmission();
    }


}
