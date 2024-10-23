using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TransitionManager : Singleton<TransitionManager>
{
    public string startScene;

    public CanvasGroup fadeCanvasGroup;

    public float fadeDuration;

    private bool isFading;

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
        StartCoroutine(TransitionToScene("Menu", startScene));
    }

    public void Transition(string from, string to)
    {
        if(!isFading)
        StartCoroutine(TransitionToScene(from, to));
    }

    private IEnumerator TransitionToScene(string from,string to)
    {
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

        // find background in a new scene
        if(to != "Menu" && to != "Family")
        CameraFollowMouse.Instance.GetNewSceneSpriteRenderer();
        CameraFollowMouse.Instance.transform.position = Vector3.zero;

        EventHandler.CallAfterSceneLoadedEvent();

        yield return Fade(0);
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
}
