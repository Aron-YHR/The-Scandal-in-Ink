using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueTrigger : MonoBehaviour
{
    [Header("Highlight")]
    [SerializeField] private GameObject Highlight;

    [Header("Ink Json")]
    [SerializeField] private TextAsset inkJson;

    private bool mouseInRange;
    public bool isClicked;

    private void Awake()
    {
        mouseInRange = false;
        isClicked = false;
        Highlight.SetActive(false);
    }

    private void Update()
    {
        if (mouseInRange && !DialogueManager.GetInstance().dialogueIsPlaying)
        {
            //Debug.Log(mouseInRange);
            Highlight.SetActive(true);
            if (isClicked)
            {
                //Debug.Log(inkJson.text);

                DialogueManager.GetInstance().EnterDialogueMode(inkJson);

                isClicked = false;
            }
        }
        else
        {
            Highlight.SetActive(false);
        }
    }

    private void OnMouseEnter()
    {
        mouseInRange=true;
    }

    private void OnMouseExit()
    {
        mouseInRange=false;
    }

}
