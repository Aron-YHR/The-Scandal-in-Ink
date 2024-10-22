using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using UnityEngine;

public class BillsScript : MonoBehaviour
{
    int shillings;
    int pence;
    [HideInInspector]
    public bool enoughMoney;

    //income
    public int Savings = 0;
    public int Salary = 0;
    public int Misc_income = 0;
    //side work
    public int Mines = 0;
    public int Mills = 0;
    //expenses
    public int Rent = 0;
    public int Food = 0;
    public int Heat = 0;

    public int medicine = 0;
    public int schooling = 0;


    public int TotalMoney = 0;


    public bool MinesBool;
    public bool MillsBool;
    public bool FoodBool;
    public bool HeatBool;
    public bool MedicineBool;
    public bool SchoolingBool;

    private void Start()
    {
        TotalMoney = Savings + Salary + Misc_income;
    }

    public void CostCalc() 
    {
        TotalMoney = Savings + Salary + Misc_income;

        TotalMoney -= Rent;

        if (MinesBool == true)
        {
            TotalMoney += Mines;
        }
        if (MillsBool == true)
        {
            TotalMoney += Mills;
        }
        if (FoodBool == true)
        {
            TotalMoney -= Food;
        }
        if (HeatBool == true)
        {
            TotalMoney -= Food;
        }
        if (MedicineBool == true)
        {
            TotalMoney -= medicine;
        }
        if (SchoolingBool == true)
        {
            TotalMoney -= schooling;
        }
        // pence to shillings conversion (12d -> 1s)

        FinalCheck();



    }

    void FinalCheck()
    {

        if (TotalMoney < 0)
        {
            print("not enough money");
            enoughMoney = false;
        }
        else
        {
            Savings = TotalMoney;
            enoughMoney = true;
        }
    }

}
