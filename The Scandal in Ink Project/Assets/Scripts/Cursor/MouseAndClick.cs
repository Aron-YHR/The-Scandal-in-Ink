using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class MouseAndClick : Singleton<MouseAndClick>
{ 
    public RectTransform hand;
    public Animator handAnimator;
    public bool isHandShowed;

    public Texture2D handClose;
    public Texture2D handOpen;

    public Vector3 mouseWorldPos => Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0));


    [SerializeField]private bool canClick;

    // Update is called once per frame
    void Update()
    {
        canClick = ObjectAtMousePosition();
        /*if (ObjectAtMousePosition() != null)
        {
            Debug.Log(ObjectAtMousePosition().gameObject.name);
        }*/
        

        if(DialogueManager.GetInstance().dialogueIsPlaying || UIManager.Instance.isUIOpened)
        {
            //Debug.Log("UI Open");
            return;
        }

        if (hand.gameObject.activeInHierarchy)
        {
            hand.position = Input.mousePosition;
        }

        if (canClick && Input.GetMouseButtonDown(0) && !TransitionManager.Instance.isFading)
        {
            // identify the situations of mouse interaction
            //if (hand.gameObject.activeInHierarchy)
            //handAnimator.Play("HandGrab");

            if (UITest()) // if there is UI above the gameobject, cannot trigger the item
            {
                Debug.Log("UI");
            }


            else ClickAction(ObjectAtMousePosition().gameObject);


            /*Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit;

            if (hit = Physics2D.Raycast(ray.origin,ray.direction,Mathf.Infinity))
            {
                if (hit.collider != null)
                {
                    //Debug.Log(hit.collider.gameObject);
                    hit.transform.GetComponent<DialogueTrigger>().isClicked = true;
                }

            }*/
        }
        //else
        //{
            
        //}
    }


    private void ClickAction(GameObject clickObject)
    {
        Debug.Log(clickObject.tag);
        switch (clickObject.tag)
        {
            case "Teleport":
                var teleport = clickObject.GetComponent<Teleport>();
                teleport?.TeleportToScene(); // check if it is null
                break;
            case "NPC":
                clickObject.GetComponent<DialogueTrigger>().StartDialogue();//.isClicked = true;
                hand.gameObject.SetActive(false);
                var npc = clickObject.GetComponent<NPC>();
                npc?.NPCClicked();
                break;
            case "Item":
                var item = clickObject.GetComponent<Item>();
                if(!item.isHid)
                    item?.ItemClicked();
                else item.isClicked = true ;
                break;
            case "Letters":
                var letters = clickObject.GetComponent<Letters>();
                if (letters.isClicked == false)
                {
                    letters.isClicked = true;
                    letters.OpenLetters();
                }
                break;
        }
    }

    private bool UITest()
    {
        //Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        //RaycastHit hit;

        //if (Physics.Raycast(ray, out hit)) //&& hit.transform != null && hit.transform.gameObject.layer == 5)
        //{
        if (EventSystem.current.IsPointerOverGameObject())
        {
            
            return true;

        }
        else return false;
            
        //}
    }

    /// <summary>
    /// get the collider within mouse click position
    /// </summary>
    /// <returns></returns>
    
    private Collider2D ObjectAtMousePosition()
    {
        
        return Physics2D.OverlapPoint(mouseWorldPos);
    }
    

}
