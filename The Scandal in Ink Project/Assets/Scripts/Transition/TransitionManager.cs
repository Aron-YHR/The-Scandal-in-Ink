using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TransitionManager : Singleton<TransitionManager>
{
    public string startScene;

    public Canvas fadeCanvas;
    public CanvasGroup fadeCanvasGroup;

    public float fadeDuration;

    public bool isFading;
    public Animator cutsceneAnimator;

    //public DialogueTrigger dialogueTrigger;

    //public AudioDefinition audioDefinition;

    /*private void Start()
    {
        StartCoroutine(TransitionToScene(string.Empty, startScene));
    }*/

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
        fadeCanvas.sortingOrder = 11;
        StartCoroutine(TransitionToScene("Menu", startScene));
        cutsceneAnimator.Play("Newspaper");

    }

    public void Transition(string from, string to)
    {
        if(!isFading) //may cause bug
        StartCoroutine(TransitionToScene(from, to));
    }

    public void TransitionWithoutAudio(string from, string to)
    {
        if (!isFading) //may cause bug
            StartCoroutine(TransitionToSceneWithoutAudio(from, to));
    }

    public void CutsceneTransition(string from, string to,float length)
    {
        if(!isFading)
        {
            //this.dialogueTrigger = dialogueTrigger;
            StartCoroutine(CutsceneTransitionToScene(from, to,length));
        }
    }

    private IEnumerator TransitionToScene(string from,string to)
    {
        if (to == "AfterGame")
        {
            yield return new WaitForSeconds(3f);
            InventoryManager.Instance.journalPanel.SetActive(false);
        }

        CameraFollowMouse.Instance.DesactivateMove();

        if(to != "BeforeGame")
        AudioManager.Instance.OnTransitionAudioEvent(null);

        yield return Fade(1);

        

        if (from != string.Empty)
        {
            EventHandler.CallBeforeSceneUnloadEvent();

            yield return SceneManager.UnloadSceneAsync(from);
        }

        yield return SceneManager.LoadSceneAsync(to,LoadSceneMode.Additive);

        // set new scene to be active
        Scene newScene = SceneManager.GetSceneAt(SceneManager.sceneCount - 1);

        SceneManager.SetActiveScene(newScene);

        if(newScene != null && newScene.name == "LadyPocket")
        {
            MouseAndClick.Instance.hand.gameObject.SetActive(true);
            MouseAndClick.Instance.isHandShowed = true;
        }
        else
        {
            MouseAndClick.Instance.isHandShowed = false;
            MouseAndClick.Instance.hand.gameObject.SetActive(false);
        }

        // find background in a new scene
        if(to != "Menu" && to != "Family")
        CameraFollowMouse.Instance.GetNewSceneSpriteRenderer();
        CameraFollowMouse.Instance.transform.position = Vector3.zero;

        EventHandler.CallAfterSceneLoadedEvent();

        //yield return new WaitForSeconds(length); // keep sreen black
        yield return Fade(0);

        fadeCanvas.sortingOrder = 2;

        if (!DialogueManager.GetInstance().dialogueIsPlaying)
        CameraFollowMouse.Instance.ActivateMove();
    }

    private IEnumerator TransitionToSceneWithoutAudio(string from, string to)
    {
        if (to == "AfterGame")
        {
            yield return new WaitForSeconds(3f);
            InventoryManager.Instance.journalPanel.SetActive(false);
        }

        CameraFollowMouse.Instance.DesactivateMove();

        //if (to != "BeforeGame")
            //AudioManager.Instance.OnTransitionAudioEvent(null);

        yield return Fade(1);



        if (from != string.Empty)
        {
            EventHandler.CallBeforeSceneUnloadEvent();

            yield return SceneManager.UnloadSceneAsync(from);
        }

        yield return SceneManager.LoadSceneAsync(to, LoadSceneMode.Additive);

        // set new scene to be active
        Scene newScene = SceneManager.GetSceneAt(SceneManager.sceneCount - 1);

        SceneManager.SetActiveScene(newScene);

        if (newScene != null && newScene.name == "LadyPocket")
        {
            MouseAndClick.Instance.hand.gameObject.SetActive(true);
            MouseAndClick.Instance.isHandShowed = true;
        }
        else
        {
            MouseAndClick.Instance.isHandShowed = false;
            MouseAndClick.Instance.hand.gameObject.SetActive(false);
        }

        // find background in a new scene
        if (to != "Menu" && to != "Family")
            CameraFollowMouse.Instance.GetNewSceneSpriteRenderer();
        CameraFollowMouse.Instance.transform.position = Vector3.zero;

        EventHandler.CallAfterSceneLoadedEvent();

        //yield return new WaitForSeconds(length); // keep sreen black
        yield return Fade(0);

        fadeCanvas.sortingOrder = 2;

        if (!DialogueManager.GetInstance().dialogueIsPlaying)
            CameraFollowMouse.Instance.ActivateMove();
    }

    private IEnumerator CutsceneTransitionToScene(string from, string to,float length)
    {

        CameraFollowMouse.Instance.DesactivateMove();

        yield return FadeForCutscene(1);

        if (from != string.Empty)
        {
            EventHandler.CallBeforeSceneUnloadEvent();

            if((from != "BeforeGame" || to != "Family")&&(from != "AfterGame" || to != "Family"))
            yield return SceneManager.UnloadSceneAsync(from);
        }

        if( (from != "Family" || to != "BeforeGame") && (from != "Family" || to != "AfterGame"))
        yield return SceneManager.LoadSceneAsync(to, LoadSceneMode.Additive);

        // set new scene to be active
        Scene newScene = SceneManager.GetSceneAt(SceneManager.sceneCount - 1);

        SceneManager.SetActiveScene(newScene);

        

        // find background in a new scene
        if (to != "Menu" && to != "Family" && to != "BeforeGame")
            CameraFollowMouse.Instance.GetNewSceneSpriteRenderer();
        CameraFollowMouse.Instance.transform.position = Vector3.zero;

        EventHandler.CallAfterSceneLoadedEvent();

        yield return new WaitForSeconds(length); // keep sreen black

        yield return FadeForCutscene(0);

        //Debug.Log(dialogueTrigger.gameObject.name);
        /*if (dialogueTrigger != null)
        {
            dialogueTrigger.StartDialogue();
        }*/

        fadeCanvas.sortingOrder = 2;

        if (!DialogueManager.GetInstance().dialogueIsPlaying)
            CameraFollowMouse.Instance.ActivateMove();
    }

    /// <summary>
    /// fading in/out transition
    /// </summary>
    /// <param name="targetAlpha">alpha = 1 = black, 0 = transparent</param>
    /// <returns></returns>
    private IEnumerator Fade(float targetAlpha)
    {
        isFading = true;

        fadeCanvasGroup.blocksRaycasts = true;

        float speed = Mathf.Abs(fadeCanvasGroup.alpha - targetAlpha) / fadeDuration;

        while (!Mathf.Approximately(fadeCanvasGroup.alpha, targetAlpha))
        {
            fadeCanvasGroup.alpha = Mathf.MoveTowards(fadeCanvasGroup.alpha,targetAlpha, speed * Time.deltaTime);
            yield return null;
        }

        fadeCanvasGroup.blocksRaycasts = false;

        isFading = false;
    }

    private IEnumerator FadeForCutscene(float targetAlpha)
    {
        isFading = true;

        fadeCanvasGroup.blocksRaycasts = true;

        float speed = Mathf.Abs(fadeCanvasGroup.alpha - targetAlpha) / fadeDuration;

        while (!Mathf.Approximately(fadeCanvasGroup.alpha, targetAlpha))
        {
            fadeCanvasGroup.alpha = Mathf.MoveTowards(fadeCanvasGroup.alpha, targetAlpha, speed * Time.deltaTime);
            yield return null;
        }

        fadeCanvasGroup.blocksRaycasts = false;

        isFading = false;
    }

}
