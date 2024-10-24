using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class wellbeingScript : MonoBehaviour
{
    // Start is called before the first frame update
    public string[] FamilyNames = new string[3];
    public int[] FamilyLevel = new int[3];
    public bool[] IsFamilyDead = new bool[3];

    public string[] states;
    public BillsScript BillsScript;

    int lowerLimit;
    int upperLimit;




    // Update is called once per frame
    /* private void Start()
     {
         lowerLimit = 0;
         upperLimit = states.Length;
     }
     public void WellbeingSubmission()
     {

         BillsScript.CostCalc();
         if (BillsScript.enoughMoney)
         {

             UpdateWellbeing();

         }

     }

     void UpdateWellbeing ()
     {
         for (int i = 0; i < IsFamilyDead.Length; i++)
         {
             if (!IsFamilyDead[i]) 
             {
                 MedicineCheck(i);
                 BillsCheck(i);
                 ChildrenCheck(i);

             }
             if (FamilyLevel[i] <= lowerLimit) {IsFamilyDead[i] = true; FamilyLevel[i] = lowerLimit; }
             else if (FamilyLevel[i] > upperLimit) { FamilyLevel[i] = upperLimit; }
         }

         for(int i = 0; i < IsFamilyDead.Length; i++){
             Debug.Log(FamilyNames[i] + " is  " + states[FamilyLevel[i]]);
         }
     }

     void BillsCheck(int familymember)
     {

         int MissedBillCounter = 0;

         if (!BillsScript.FoodBool) { MissedBillCounter++; }
         if (!BillsScript.HeatBool) { MissedBillCounter++; }

         for (int i = 0; i < MissedBillCounter; i++)
         {
             int roll = UnityEngine.Random.Range(0, 3);
             if(roll == 1 )
             {
                 FamilyLevel[familymember]--;

             }

         }


     }

     void ChildrenCheck(int familymember)
     {
         int Son = 1;
         int Daughter = 2;
         if (familymember == Son)
         {
             FamilyLevel[familymember] -= 1 * (Convert.ToInt16(BillsScript.MinesBool) * UnityEngine.Random.Range(0,1) - Convert.ToInt16(BillsScript.SchoolingBool));
         }
         if (familymember == Daughter)
         {
             FamilyLevel[familymember] -= 1 * (Convert.ToInt16(BillsScript.MillsBool) * UnityEngine.Random.Range(0,1) - Convert.ToInt16(BillsScript.SchoolingBool));
         }
     }

     void MedicineCheck(int familymember) 
     {
         if(FamilyLevel[familymember] < 3 & BillsScript.MedicineBool)
         {
             FamilyLevel[familymember] = 3;
             print("is working");
         }
     }*/


}
