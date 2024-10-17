using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using Unity.VisualScripting;

public class DialogueManager : MonoBehaviour
{
    private static DialogueManager instance;

    [Header("Load Globals JSON")]
    [SerializeField] private TextAsset globalsInkFile;

    [Header("Params")]
    [SerializeField] private float typingSpeed = 0.04f;

    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private Image portraitImage;
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private TextMeshProUGUI displayNameText;
    [SerializeField] private Animator portraitAnimator;
    private Animator layoutAnimator;

    [Header("Choices UI")]
    // any number of choices
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;


    private Story currentStory;

    public bool dialogueIsPlaying { get; private set; }

    public bool canContinueToNextLine = false;

    private Coroutine displayLineCoroutine;

    [SerializeField] private Button continueButton;
    //public bool isClicked = false;

    // some tags in the narrative scripts
    private const string SPEAKER_TAG = "speaker";
    private const string PORTAIT_TAG = "portrait";
    private const string LAYOUT_TAG = "layout";

    private DialogueVariables dialogueVariables;
         
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

        dialogueVariables = new DialogueVariables(globalsInkFile);
    }

    public static DialogueManager GetInstance()
    {
        return instance;
    }

    private void Start()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);

        // get the layout animator
        layoutAnimator = dialoguePanel.GetComponent<Animator>();

        // continue the story if player click the continue button
        continueButton.onClick.AddListener(ContinueButtonClick);

        // get all of the choices text
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }
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

    private void OnEnable()
    {
        EventHandler.StartNewGameEvent += OnStartNewGameEvent;
    }

    private void OnDisable()
    {
        EventHandler.StartNewGameEvent -= OnStartNewGameEvent;
    }

    private void OnStartNewGameEvent()
    {
        PlayerPrefs.DeleteAll();
        dialogueVariables = new DialogueVariables(globalsInkFile);
    }

    public void EnterDialogueMode(TextAsset inkJson)
    {
        CameraFollowMouse.Instance.canMove = false;

        currentStory = new Story(inkJson.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);

        dialogueVariables.StartListening(currentStory);

        // reset portrait, layout, and speaker
        displayNameText.text = "???";
        portraitAnimator.Play("Default");
        //portraitImage.SetNativeSize();
        layoutAnimator.Play("right");

        ContinueStory();

    }

    private void ExitDialogueMode()
    {
        dialogueVariables.StopListening(currentStory);

        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";

        CameraFollowMouse.Instance.canMove = true;
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            // set text for the current dialogue line
            // set at once
            //dialogueText.text = currentStory.Continue();

            // set a letter at a time, if there is former coroutine, stop it first
            if (displayLineCoroutine != null)
            {
                StopCoroutine(displayLineCoroutine);
            }
            displayLineCoroutine = StartCoroutine(DisplayLine(currentStory.Continue()));

            // handle tags
            HandleTags(currentStory.currentTags);
        }
        else
        {
            ExitDialogueMode();
        }
    }

    void ContinueButtonClick()
    {
       // Debug.Log(canContinueToNextLine);
        if (canContinueToNextLine)
        {
            
            ContinueStory();
        }
    }

    private IEnumerator DisplayLine(string line)
    {
        // set the text to the full line, but set the visible characters to 0
        dialogueText.text = line;
        dialogueText.maxVisibleCharacters = 0;

        // hide items while text is typing
        continueButton.gameObject.SetActive(false);
        HideChoicesButtons();

        canContinueToNextLine = false;

        // display each letter one at a time
        foreach(char letter in line.ToCharArray())
        {
            // if the right mouse button is pressed, displaying the whole line right away
            if (Input.GetMouseButton(1))
            {
                dialogueText.maxVisibleCharacters = line.Length;
                break;
            }

            dialogueText.maxVisibleCharacters++;
            yield return new WaitForSeconds(typingSpeed);
        }

        // active items after the entire line has displayed
        // display continue button
        // hide the continue button if current choices more than 0
        if (currentStory.currentChoices.Count > 0)
        {
            continueButton.gameObject.SetActive(false);
        }
        else
        {
            continueButton.gameObject.SetActive(true);
        }

        // display choices, if any, for this dialogue line (there is always a List of choices event the count is 0)
        if (currentStory.currentChoices != null)
        {
            DisplayChoices();
        }

        canContinueToNextLine = true;
    }

    private void HideChoicesButtons()
    {
        foreach(GameObject choiceButton in choices)
        {
            choiceButton.SetActive(false);
        }
    }

    private void HandleTags(List<string> currentTags)
    {
        // loop through each tag and handle it accordingly
        foreach (string tag in currentTags)
        {
            // parse the tag
            string[] splitTag = tag.Split(':');
            if(splitTag.Length != 2)
            {
                Debug.LogError("Tag could not be appropriately parsed:" +tag);
            }

            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim();

            // handle the tag
            switch (tagKey)
            {
                case SPEAKER_TAG:
                    //Debug.Log("speaker="+ tagValue);
                    displayNameText.text = tagValue;
                    break;
                case PORTAIT_TAG:
                    //Debug.Log("portait=" + tagValue);
                    portraitAnimator.Play(tagValue);
                    //portraitImage.SetNativeSize();
                    break;
                case LAYOUT_TAG:
                    //Debug.Log("layout=" + tagValue);
                    layoutAnimator.Play(tagValue);
                    break;
                default:
                    Debug.LogWarning("Tag came in but is not currently being handled:" + tag);
                    break;
            }

        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        Debug.Log(currentChoices.Count);

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices were given than UI can support. Number of choices give: "+currentChoices.Count);
        }

        int index = 0;
        // enable and initialize the choices up to the amount of choices for this line of dialogue
        foreach (Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }

        // go through the remaining choices the UI supports and make sure they're hidden
        for(int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }

        //StartCoroutine(SelectFirstChoice());
    }

    /*private IEnumerator SelectFirstChoice()
    {
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject);
    }*/

    public void MakeChoice(int choiceIndex)
    {
        if (canContinueToNextLine)
        {
            currentStory.ChooseChoiceIndex(choiceIndex);
            //Debug.Log(currentStory.currentText);
            ContinueStory();
        }
    }

    public void SetVariableState(string variableName, bool state)
    {
        Ink.Runtime.Object variableValue;
        if (state)
        {
            dialogueVariables.variables.TryGetValue("test_true",out variableValue);
            dialogueVariables.VariableChanged(variableName,variableValue);
        }
        else
        {
            dialogueVariables.variables.TryGetValue("test_false", out variableValue);
            dialogueVariables.VariableChanged(variableName, variableValue);
        }
    }


    // this method will get called anytime the application exits.
    public void OnApplicationQuit()
    {
        if (dialogueVariables != null)
        {
            dialogueVariables.SaveVariables();
        }
    }

}

