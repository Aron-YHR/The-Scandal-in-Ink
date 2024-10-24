using UnityEngine;

[CreateAssetMenu(fileName = "BillData_SO", menuName = "Family/BillData_SO")]
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

    /// <summary>
    /// Impacts to wellbeing
    /// </summary>
    /// <param name="tag"></param>
    /// <returns></returns>
    public int minesImpact;
    public int millsImpact;
    public int foodImpact;
    public int heatImpact;
    public int medicineImpact;
    public int schoolingImpact;


    public int GetValue(string tag)
    {
        int value = 0;
        if (tag == null) return 0;
        else
        {
            switch (tag)
            {
                case "savings":
                    value = Savings;
                    break;
                case "salary":
                    value = Salary;
                    break;
                case "misc_income":
                    value = Misc_income;
                    break;
                case "mines":
                    value = Mines;
                    break;
                case "mills":
                    value = Mills;
                    break;
                case "rent":
                    value = Rent;
                    break;
                case "food":
                    value = Food;
                    break;
                case "heat":
                    value = Heat;
                    break;
                case "medicine":
                    value = Medicine;
                    break;
                case "schooling":
                    value = Schooling;
                    break;
            }
        }
        return value;
    }

    public int GetImpact(string tag)
    {
        int impact = 0;
        switch (tag)
        {
            case "mines":
                impact = minesImpact;
                break;
            case "mills":
                impact = millsImpact;
                break;
            case "food":
                impact = foodImpact;
                break;
            case "heat":
                impact = heatImpact;
                break;
            case "medicine":
                impact = medicineImpact;
                break;
            case "schooling":
                impact = schoolingImpact;
                break;
        }
        return impact;
    }


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


