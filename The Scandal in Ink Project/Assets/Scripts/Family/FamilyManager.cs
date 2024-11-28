using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class FamilyManager : Singleton<FamilyManager>
{

    //public ButtonInputs buttonInputs;
    public BillsScript billsScript;
    public FamilyMember_SO familyMember_SO;
    public LetterStatements_SO letterStatements;
    public CutsceneDataList_SO cutsceneDataList;

    //public List<int> wellbelingList;
    public List<FamilyHP> familyHPList;
    [SerializeField] private List<ExpenseOption> choices;

    [Header("Family UI")] 
    [SerializeField] private TextMeshProUGUI costText;
    [SerializeField] private TextMeshProUGUI SalaryPayText;
    [SerializeField] private TextMeshProUGUI extraPayText;
    [SerializeField] private TextMeshProUGUI savingsText;
    [SerializeField] private TextMeshProUGUI totalIncomeText;
    [SerializeField] private TextMeshProUGUI totalSavingsText;
    [SerializeField] private GameObject submitButton;
    [SerializeField] private GameObject warningPanel;
    //[SerializeField] private GameObject endScreen;

    //[SerializeField] private List<TextMeshProUGUI> expenseValueTextList;
    private int cost;
    private int totalIncome;
    private int totalSavings;

    private int[] impactForEachMember;

    //private int level;

    private void OnEnable()
    {
        Instance.cutsceneDataList.list[0].lettersList[3] = null;
        //level = 0;

        impactForEachMember = new int[3] {0,0,0 };

        submitButton.SetActive(true);
        cost = billsScript.Rent;
        costText.text = cost.ToString()+"s";

        totalIncome = billsScript.Salary + billsScript.Misc_income + billsScript.Savings;

        totalSavings = totalIncome - cost;

        SalaryPayText.text = billsScript.Salary.ToString() + "s";
        extraPayText.text = billsScript.Misc_income.ToString() + "s";
        savingsText.text = billsScript.Savings.ToString() + "s";

        totalIncomeText.text = totalIncome.ToString()+"s";

        totalSavingsText.text = totalSavings.ToString()+"s";
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
                if (isChosen) totalIncome += billsScript.Mines;
                else totalIncome -= billsScript.Mines;

                break;
            case "mills":
                if (isChosen) totalIncome += billsScript.Mills;
                else totalIncome -= billsScript.Mills;

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

        totalIncomeText.text = totalIncome.ToString()+"s";
        costText.text = cost.ToString()+"s";
        totalSavings = totalIncome - cost;
        totalSavingsText.text = totalSavings.ToString()+"s";
    }

    public void CalculateWellbeing(string expenseOption, bool isChosen)
    {
        expenseOption = expenseOption.ToLower();

        switch (expenseOption)
        {
            case "food"://only for son
                if (!isChosen)
                {
                    /*for (int i = 0; i < impactForEachMember.Length; i++)
                    {
                        impactForEachMember[i]+= billsScript.GetImpact(expenseOption);
                    }*/
                    impactForEachMember[1] += billsScript.GetImpact(expenseOption);
                }
                break;
            case "heat"://only for daughter
                if (!isChosen)
                {
                    /*for (int i = 0; i < impactForEachMember.Length; i++)
                    {
                        impactForEachMember[i]+= billsScript.GetImpact(expenseOption);
                    }*/
                    impactForEachMember[2] += billsScript.GetImpact(expenseOption);
                }
                break;
            case "mines": //Only for son
                if (isChosen)
                {
                    impactForEachMember[1]+=billsScript.GetImpact(expenseOption);
                }
                break;
            case "mills"://Only for daughter
                if (isChosen)
                {
                    impactForEachMember[2] += billsScript.GetImpact(expenseOption);
                }
                break;
            case "medicine"://for all members
                if (isChosen)
                {
                    for (int i = 0; i < impactForEachMember.Length; i++)
                    {
                        impactForEachMember[i] += billsScript.GetImpact(expenseOption);
                    }
                }
                break;
            case "schooling":
                // only for chidren
                if (isChosen)
                {
                    for (int i = 1; i < impactForEachMember.Length; i++)
                    {
                        impactForEachMember[i] += billsScript.GetImpact(expenseOption);
                    }
                }
                break;
        }

        /*for (int i = 0;i < impactForEachMember.Length; i++)
        {
            familyHPList[i].CalculateWellbeingChange(impactForEachMember[i]);
        }*/
    }

    public void SubmitBills()
    {
        //wScript.WellbeingSubmission();
        if (totalSavings >= 0)
        {
            billsScript.Savings = totalSavings;

            for(int i = 0; i < choices.Count; i++)
            {
                choices[i].OnExpensesSubmited();
            }

            // change each family member state
            for (int i = 0; i < familyHPList.Count; i++)
            {
                if (!familyHPList[i].familyMember.isDead)
                {
                    familyHPList[i].ChangeWellbeing(impactForEachMember[i]);
                    Instance.cutsceneDataList.list[0].lettersList[3] += familyHPList[i].familyMember.name + Instance.letterStatements.statementsList[(int)familyHPList[i].familyMember.state] + "\n";
                }
            }

            submitButton.SetActive(false);

            if (billsScript.gameLevel == 0)
            {
                billsScript.gameLevel++;

                BeforeGameManager beforeGameManager = FindFirstObjectByType<BeforeGameManager>();
                if (beforeGameManager != null)
                {
                    beforeGameManager.letters_2.SetActive(true);
                    beforeGameManager.audiosForCutscene.PlayTransitionAudioEvent(0);
                }
                TransitionManager.Instance.CutsceneTransition("Family", "BeforeGame", beforeGameManager.audiosForCutscene.transitionAudioClips[0].length);
            }
            else if (billsScript.gameLevel == 1)
            {
                AfterGameManager afterGameManager = FindFirstObjectByType<AfterGameManager>();
                if (afterGameManager != null)
                {
                    afterGameManager.letters_2.SetActive(true);
                    
                }
                TransitionManager.Instance.CutsceneTransition("Family", "AfterGame", 0);
            }

            //TransitionManager.Instance.Transition(SceneManager.GetActiveScene().name, "AfterGame");
        }
        else
        {
            warningPanel.SetActive(true);
            //Debug.Log("There is not enough income for expenditure");
        }

        
    }

    /*private IEnumerator EndScreen()
    {
        yield return new WaitForSeconds(3f);
        endScreen.SetActive(true);
    }*/

    


}

