using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseAndClick : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(DialogueManager.GetInstance().dialogueIsPlaying)
        {
            return;
        }

        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit;

            if (hit = Physics2D.Raycast(ray.origin,ray.direction,Mathf.Infinity))
            {
                if (hit.collider != null)
                {
                    //Debug.Log(hit.collider.gameObject);
                    hit.transform.GetComponent<DialogueTrigger>().isClicked = true;
                }

            }
        }
    }

    
}
