using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseAndClick : Singleton<MouseAndClick>
{ 
    public RectTransform hand;
    public Animator handAnimator;
    public bool isHandShowed;

    public Vector3 mouseWorldPos => Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0));


    private bool canClick;

    // Update is called once per frame
    void Update()
    {
        canClick = ObjectAtMousePosition();

        if(DialogueManager.GetInstance().dialogueIsPlaying || UIManager.Instance.isUIOpened)
        {
            return;
        }

        if (hand.gameObject.activeInHierarchy)
        {
            hand.position = Input.mousePosition;
        }

        if (canClick && Input.GetMouseButtonDown(0))
        {
            // identify the situations of mouse interaction
            if (hand.gameObject.activeInHierarchy)
            handAnimator.Play("HandGrab");
            ClickAction(ObjectAtMousePosition().gameObject);


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
    }

    private void ClickAction(GameObject clickObject)
    {
        switch (clickObject.tag)
        {
            case "Teleport":
                var teleport = clickObject.GetComponent<Teleport>();
                teleport?.TeleportToScene(); // check if it is null
                break;
            case "NPC":
                clickObject.GetComponent<DialogueTrigger>().isClicked = true;
                hand.gameObject.SetActive(false);
                var npc = clickObject.GetComponent<NPC>();
                npc?.NPCClicked();
                break;
            case "Item":
                var item = clickObject.GetComponent<Item>();
                if(!item.isHide)
                    item?.ItemClicked();
                else item.isClicked = true ;
                break;
        }
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
