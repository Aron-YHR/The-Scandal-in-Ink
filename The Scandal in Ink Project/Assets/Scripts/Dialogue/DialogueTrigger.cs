using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueTrigger : MonoBehaviour
{
    [Header("Highlight")]
    [SerializeField] private GameObject Highlight;
    [SerializeField] private Animator animator;

    [Header("Ink Json")]
    [SerializeField] private TextAsset inkJson;

    [SerializeField] private SpriteRenderer image; // the sprite renderer of this npc

    private bool mouseInRange;
    //public bool isClicked;

    //[Header("Only for Rian")]
    //public bool hideThis;

    private void Awake()
    {
        mouseInRange = false;
        //isClicked = false;
        if(Highlight != null)
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
                if(animator.runtimeAnimatorController!= null)
                animator.Play("ItemAndNPCHighlight");
            }
            /*if (isClicked)
            {
                //Debug.Log(inkJson.text);

                //DialogueManager.GetInstance().EnterDialogueMode(inkJson);
                

                isClicked = false;
            }*/
        }
        else
        {
            if (Highlight != null)
                Highlight.SetActive(false);
        }
    }

    public void StartDialogue()
    {
        if(image != null)
        image.enabled = false;
        DialogueManager.GetInstance().EnterDialogueMode(inkJson,image);
        //if(hideThis) Destroy(gameObject);
           // gameObject.SetActive(false);
    }

    private void OnMouseEnter()
    {
        mouseInRange=true;
    }

    private void OnMouseExit()
    {
        mouseInRange=false;
    }

    public void SetInkText(TextAsset textAsset)
    {
        inkJson = textAsset;
    }

}
