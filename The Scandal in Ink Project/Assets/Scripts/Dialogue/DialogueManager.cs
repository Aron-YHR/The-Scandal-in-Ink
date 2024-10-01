using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    private static DialogueManager instance;

    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private TextMeshProUGUI dialogueText;

    private Story currentStory;

    public bool dialogueIsPlaying { get; private set; }

    [SerializeField] private Button continueButton;
    //public bool isClicked = false;
         
    private void Awake()
    {
        if (instance != null)
        {
            Destroy(instance);
        }
        else
        {
            instance = this;
        }
    }

    public static DialogueManager GetInstance()
    {
        return instance;
    }

    private void Start()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);

        // continue the story if player click the continue button
        continueButton.onClick.AddListener(ContinueButtonClick);
    }

    private void Update()
    {

        // return right away if dialogue isn't playing
        if (!dialogueIsPlaying)
        {
            return;
        }

        
        /*if (isClicked)
        {
            ContinueStory();
        }*/

        
    }

    public void EnterDialogueMode(TextAsset inkJson)
    {
        

        currentStory = new Story(inkJson.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);

        ContinueStory();

    }

    private void ExitDialogueMode()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();
        }
        else
        {
            ExitDialogueMode();
        }
    }

    void ContinueButtonClick()
    {
        ContinueStory();
    }    

}

