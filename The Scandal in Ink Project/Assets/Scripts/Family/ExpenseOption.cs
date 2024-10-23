using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ExpenseOption : MonoBehaviour
{
    public string expenseTag;
    public TextMeshProUGUI expenseValueText;
    public Toggle toggle;

    private void Start()
    {
        expenseValueText.text = FamilyManager.Instance.billsScript.GetValue(expenseTag).ToString()+"s";
    }

    public void OnOptionSelected()
    {
        FamilyManager.Instance.SelectExpenseOption(expenseTag, toggle.isOn);
    }

    public void OnExpensesSubmited()
    {
        toggle.enabled = false;
        FamilyManager.Instance.CalculateWellbeing(expenseTag, toggle.isOn);
    }

}
