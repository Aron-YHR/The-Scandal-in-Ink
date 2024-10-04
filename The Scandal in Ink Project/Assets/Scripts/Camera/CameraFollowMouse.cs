using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollowMouse : MonoBehaviour
{
    public float smoothSpeed = 5.0f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        // get mouse screen position
        Vector3 mousePos = Input.mousePosition;

        // change screen pos into world pos
        Vector3 worldPos = Camera.main.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, Camera.main.nearClipPlane));

        // smoothly follow
        transform.position = Vector3.Lerp(transform.position, worldPos, Time.deltaTime * smoothSpeed);
    }
}
