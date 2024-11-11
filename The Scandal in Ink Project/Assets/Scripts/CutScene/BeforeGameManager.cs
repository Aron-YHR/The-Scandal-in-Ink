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

    public GameObject letters_2;
    public AudioDefinition audiosForCutscene;


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
       
        switch(index)
        {
            case 0: 
                beforeGameAnimatorController.Play("FirstLetter"); break;
            case 1: 
                beforeGameAnimatorController.Play("SecondLetter"); break;
            case 2: 
                beforeGameAnimatorController.Play("ThirdLetter"); break;
            case 3: 
                beforeGameAnimatorController.Play("ExitLetter");
                TransitionManager.Instance.CutsceneTransition("BeforeGame","Family",0);
                canvas.sortingOrder = -1;
                break;
            case 4: canvas.sortingOrder = 1; beforeGameAnimatorController.Play("FourthLetter"); break;
            case 5: beforeGameAnimatorController.Play("FifthLetter"); break;
            case 6: beforeGameAnimatorController.Play("ExitLetter_2");
                audiosForCutscene.PlayTransitionAudioEvent(1);
                dialogueTrigger.StartDialogue(); canvas.sortingOrder = -1;
                break;
        }
        index++;
    }

}
