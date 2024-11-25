using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemDetails itemDetails;
    public bool isClicked;
    //public AnimationClip clip;
    [Header("If it is hid in pocket")]
    public bool isHid; //If it is in pocket

    private Vector3 previousPos;

    [Header("Highlight")]
    [SerializeField] private GameObject Highlight;
    [SerializeField] private Animator animator;

    private bool mouseInRange;

    private void Awake()
    {
        mouseInRange = false;
        if (Highlight != null)
            Highlight.SetActive(false);
    }

    private void Start()
    {
        itemDetails = InventoryManager.Instance.itemData.GetItemDetails(itemDetails.itemName);
        if(isHid)
        previousPos = transform.position;
    }

    private void Update()
    {
        if (mouseInRange && !DialogueManager.GetInstance().dialogueIsPlaying && !UIManager.Instance.isUIOpened)
        {
            //Debug.Log(mouseInRange);
            if (Highlight != null)
            {
                Highlight.SetActive(true);
                animator.Play("ItemAndNPCHighlight");
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

        if (isHid && isClicked)
        {
            Vector3 v = Camera.main.ScreenToWorldPoint(Input.mousePosition);
            transform.position = new Vector3(v.x, v.y,0);
            //Debug.Log(Vector3.Distance(previousPos, transform.position));
            if (Vector3.Distance(previousPos, transform.position) > 3f)
            {

                ItemClicked();
                MouseAndClick.Instance.handAnimator.Play("HandOpen");
            }
        }
    }

    public void ItemClicked()
    {
        // show the item and its info
        if(GetComponent<DialogueTrigger>() == null) 
        UIManager.Instance.SetItemShowcase(gameObject,itemDetails);
        else
        {
            GetComponent<DialogueTrigger>().StartDialogue();
        }

        if(itemDetails.value != 0)
        {
            InventoryManager.Instance.AddValue(itemDetails);
        }

        // add it into journal and remove it in environment
        if(!itemDetails.notRecordedInJournal)
        InventoryManager.Instance.AddItem(itemDetails);

        if(itemDetails.isEvidence)
        DialogueManager.GetInstance().SetVariableState(itemDetails.itemName.ToString(), itemDetails.isEvidence);

        if(!itemDetails.notPickedUp)
        this.gameObject.SetActive(false);
    }

    public void SetOriginalPos()
    {
        transform.position = previousPos;
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
