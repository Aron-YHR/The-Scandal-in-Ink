using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseAndClick : MonoBehaviour
{
    public Vector3 mouseWorldPos => Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0));

    private bool canClick;

    // Update is called once per frame
    void Update()
    {
        canClick = ObjectAtMousePosition();

        if(DialogueManager.GetInstance().dialogueIsPlaying)
        {
            return;
        }

        if (canClick && Input.GetMouseButtonDown(0))
        {
            // identify the situations of mouse interaction

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
                break;
            case "Item":
                var item = clickObject.GetComponent<Item>();
                item?.ItemClicked();
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
