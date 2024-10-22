using TMPro;
using UnityEngine;

[CreateAssetMenu(fileName = "BillData_SO", menuName = "FamilyBill/BillData_SO")]
public class BillsScript : ScriptableObject
{
    /*[HideInInspector]
      public bool enoughMoney;*/

    //income
    public int Savings;
    public int Salary;
    public int Misc_income;
    //side work
    public int Mines;
    public int Mills;
    //expenses
    public int Rent;
    public int Food;
    public int Heat;
    public int Medicine;
    public int Schooling;


    //public int TotalMoney = 0;


    /*public bool MinesBool;
    public bool MillsBool;
    public bool FoodBool;
    public bool HeatBool;
    public bool MedicineBool;
    public bool SchoolingBool;*/



    /*public void CostCalc() 
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
        }*/
    // pence to shillings conversion (12d -> 1s)

    //FinalCheck();
}

    /*void FinalCheck()
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
    }*/


