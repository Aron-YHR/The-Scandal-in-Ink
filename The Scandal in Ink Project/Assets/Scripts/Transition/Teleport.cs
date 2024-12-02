using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teleport : MonoBehaviour
{
    public string sceneFrom;

    public string sceneToGo;
    public bool transitionWithoutAudio;

    [Header("Highlight")]
    [SerializeField] private GameObject Highlight;

    private bool mouseInRange;

    private void Awake()
    {
        mouseInRange = false;
        if (Highlight != null)
            Highlight.SetActive(false);
    }

    private void Update()
    {
        if (mouseInRange && !DialogueManager.GetInstance().dialogueIsPlaying && !UIManager.Instance.isUIOpened)
        {
            //Debug.Log(mouseInRange);
            if (Highlight != null)
            {
                Highlight.SetActive(true);
                //animator.Play("ItemAndNPCHighlight");
            }
        }
        else
        {
            if (Highlight != null)
            {
                //animator.Play("Default");
                Highlight.SetActive(false);

            }
        }
    }

    public void TeleportToScene()
    {
        if (transitionWithoutAudio)
        {
            TransitionManager.Instance.TransitionWithoutAudio(sceneFrom, sceneToGo);
        }
        else { TransitionManager.Instance.Transition(sceneFrom, sceneToGo); }
    }

    private void OnMouseEnter()
    {
        mouseInRange = true;
    }

    private void OnMouseExit()
    {
        mouseInRange = false;
    }
}
