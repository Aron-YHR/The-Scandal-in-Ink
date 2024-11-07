using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class AfterGameManager : MonoBehaviour
{
    //public CutsceneDataList_SO cutsceneDataList_SO;
    public DeductionDataList_SO deductionData;
    public ResultList_SO resultList_SO;

    public TextMeshProUGUI newsTile;
    public Image newsImg;

    public List<TextMeshProUGUI> lettersList = new List<TextMeshProUGUI>();
    //public List<TextMeshProUGUI> choicesList = new List<TextMeshProUGUI>();
    //public TextMeshProUGUI familyLetter;
    //public GameObject endScreen;

    public int index;
    public Animator afterGameAnimatorController;
    //public DialogueTrigger dialogueTrigger;
    public Canvas canvas;

    // Start is called before the first frame update
    void Start()
    {
        index = 0;
        //List<AfterGameContent> list = cutsceneDataList_SO.aftergameContentlist.FindAll(
        //    i => i.relativeNumber == InventoryManager.Instance.journal.deductionChoices[0]
        //);

        

        Result result = resultList_SO.resultsList.Find(i => i.index == InventoryManager.Instance.journal.deductionChoices);
        
        newsTile.text = result.newsTitle;
        newsImg.sprite = result.newsImg;

        for (int i = 0; i < result.lettersList.Count; i++)
        {
            lettersList[i].text = result.lettersList[i];
        }

        //choicesList[0].text = deductionData.GetNPCNameList()[InventoryManager.Instance.journal.deductionChoices[0]];
        //choicesList[1].text = deductionData.GetLocationList()[InventoryManager.Instance.journal.deductionChoices[1]];
        //choicesList[2].text = deductionData.GetMotiveList()[InventoryManager.Instance.journal.deductionChoices[2]];
        //choicesList[3].text = deductionData.GetWayOfEscapeList()[InventoryManager.Instance.journal.deductionChoices[3]];

        //familyLetter.text = cutsceneDataList_SO.aftergameContentlist.Find(i => i.relativeTag == InventoryManager.Instance.journal.familyChoices[0]).letterText;
    }

    public void SwitchLetters()
    {
        index++;
        switch (index)
        {
            //case 0: beforeGameAnimatorController.Play("FistLetter"); break;
            case 1: afterGameAnimatorController.Play("FirstLetter"); break;
            case 2: afterGameAnimatorController.Play("SecondLetter"); break;
            case 3: afterGameAnimatorController.Play("ThirdLetter"); break;
            case 4: afterGameAnimatorController.Play("ExitLetter");break;
            case 5:
                var currentScene = SceneManager.GetActiveScene().name;
                TransitionManager.Instance.Transition(currentScene, "Family");
                break;
        }
    }

    


}
