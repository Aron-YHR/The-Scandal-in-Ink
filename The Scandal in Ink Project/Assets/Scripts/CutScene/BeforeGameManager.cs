using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class BeforeGameManager : MonoBehaviour
{
    public CutsceneDataList_SO cutsceneDataList_SO;
    public List<TextMeshProUGUI> lettersList = new List<TextMeshProUGUI>();

    public int index;
    public Animator beforeGameAnimatorController;
    public DialogueTrigger dialogueTrigger;
    public Canvas canvas;


    // Start is called before the first frame update
    void Start()
    {
        index = 0;
        for (int i = 0; i < lettersList.Count; i++)
        {
            lettersList[i].text = cutsceneDataList_SO.list[0].lettersList[i];
        }
        dialogueTrigger.SetInkText(cutsceneDataList_SO.list[0].inkJsonForCutscene);
    }

    public void SwitchLetters()
    {
        index++;
        switch(index)
        {
            //case 0: beforeGameAnimatorController.Play("FistLetter"); break;
            case 1: beforeGameAnimatorController.Play("SecondLetter"); break;
            case 2: beforeGameAnimatorController.Play("ThirdLetter"); break;
            case 3: beforeGameAnimatorController.Play("ExitLetter"); dialogueTrigger.StartDialogue(); canvas.sortingOrder = -1; break;
        }
    }

}
