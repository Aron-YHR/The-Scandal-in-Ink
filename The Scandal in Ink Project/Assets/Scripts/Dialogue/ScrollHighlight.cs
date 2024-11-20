using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScrollHighlight : MonoBehaviour
{
    [Header("Scrollview highlight")]
    public GameObject topHighlight;
    public GameObject bottomHighlight;

    public ScrollRect scrollRect;

    public void OnEnable()
    {
        topHighlight.SetActive(false);
        bottomHighlight.SetActive(false);
    }

    private void OnDisable()
    {
        topHighlight.SetActive(false);
        bottomHighlight.SetActive(false);
    }

    public void ShowScrollViewHighlight()
    {
        //Debug.Log(DialogueManager.GetInstance().currentStory.currentChoices.Count);

        if (DialogueManager.GetInstance().currentStory.currentChoices.Count == 0)
        {
            topHighlight.SetActive(false);
            bottomHighlight.SetActive(false);
            return ;
        }

        if (DialogueManager.GetInstance().canContinueToNextLine)
        {
            if (scrollRect.verticalNormalizedPosition >= 0.95f) // scrolled near start
            {
                topHighlight.SetActive(false);
                bottomHighlight.SetActive(true);
            }
            else if (scrollRect.verticalNormalizedPosition <= 0.05f) // scrolled near end
            {
                topHighlight.SetActive(true);
                bottomHighlight.SetActive(false);
            } 
            else
            {
                topHighlight.SetActive(true);
                bottomHighlight.SetActive(true);
            }
        }
    }
}
