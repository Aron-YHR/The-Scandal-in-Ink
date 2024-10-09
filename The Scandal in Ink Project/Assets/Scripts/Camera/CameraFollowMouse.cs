using Cinemachine;
using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using Unity.VisualScripting;
using UnityEditor;
using UnityEngine;

public class CameraFollowMouse : Singleton<CameraFollowMouse>
{
    private float moveSpeed = 25f;
    private int edgeScrollSize = 30;
    private Vector3 moveDir;
    //private Vector3 preDir;
    private Vector3 inputDir;

    public CinemachineVirtualCamera cinemachine;

    public SpriteRenderer envir;

    private Rect rectArea;

    public bool canMove;

    // Start is called before the first frame update
    void Start()
    {
        GetNewSceneSpriteRenderer();
        //envir = GameObject.Find("Enviro2_Background").GetComponent<SpriteRenderer>();
        //if (envir != null) Debug.Log("1");
        canMove = true;
    }

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(envir.sprite.texture.height);
        if (canMove)
        {
            inputDir = new Vector3(0, 0, 0);
            if (Input.mousePosition.x < edgeScrollSize && Input.mousePosition.x > 0) inputDir.x = -1f;
            if (Input.mousePosition.y < edgeScrollSize && Input.mousePosition.y > 0) inputDir.y = -1f;
            if (Input.mousePosition.x > Screen.width - edgeScrollSize && Input.mousePosition.x < Screen.width) inputDir.x = +1f;
            if (Input.mousePosition.y > Screen.height - edgeScrollSize && Input.mousePosition.x < Screen.width) inputDir.y = +1f;

            if (inputDir != new Vector3(0, 0, 0))
            {
                moveDir = transform.up * inputDir.y + transform.right * inputDir.x;

                transform.position += moveDir * moveSpeed * Time.deltaTime;
            }

            if (rectArea.xMin > transform.position.x)
            {
                transform.position = new Vector3(rectArea.xMin, transform.position.y, transform.position.z);
            }
            if (rectArea.xMax < transform.position.x)
            {
                transform.position = new Vector3(rectArea.xMax, transform.position.y, transform.position.z);
            }
            if (rectArea.yMin > transform.position.y)
            {
                transform.position = new Vector3(transform.position.x, rectArea.yMin, transform.position.z);
            }
            if (rectArea.yMax < transform.position.y)
            {
                transform.position = new Vector3(transform.position.x, rectArea.yMax, transform.position.z);
            }
        }


        /*if (1!=0)
        {
            Debug.Log(moveDir + "1 " + preDir);
            transform.position += moveDir * moveSpeed * Time.deltaTime;
            preDir = moveDir;
        }
        else if(moveDir != preDir)
        {
            Debug.Log(moveDir + "2 " + preDir);
            transform.position += moveDir * moveSpeed * Time.deltaTime;
            
        }*/
    }

    public void GetNewSceneSpriteRenderer()
    {
        envir = GameObject.FindGameObjectWithTag("Background").GetComponent<SpriteRenderer>();
        if (envir != null) 
        {
            //Debug.Log( Screen.width);
            //Debug.Log(envir.sprite.texture.Size().y / 2 - Screen.height);

            // set the area for limiting player pos
            rectArea = SetArea();

            // get the collider for virtual camera
            cinemachine.GetComponent<CinemachineConfiner>().m_BoundingShape2D = envir.GetComponentInChildren<PolygonCollider2D>();
        }
        else
        {
            Debug.LogWarning("No Environment");
        }
    }

    private Rect SetArea()
    {
        float rectWith = envir.size.x / 2;
        float rectHeight = envir.size.y / 2;

        return new Rect(0-rectWith/2, 0-rectHeight/2, rectWith, rectHeight);
    }

    public void ActivateMove()
    {
        canMove = true;
    }

    public void DesactivateMove()
    {
        canMove = false;
    }

}
