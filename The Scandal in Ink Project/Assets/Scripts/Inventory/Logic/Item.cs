using System.Collections;
using System.Collections.Generic;
using Unity.Mathematics;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemDetails itemDetails;
    //public AnimationClip clip;
    public bool isHide;
    public bool isClicked;

    private Vector3 previousPos;

    private void Start()
    {
        itemDetails = InventoryManager.Instance.itemData.GetItemDetails(itemDetails.itemName);
        previousPos = transform.position;
    }

    private void Update()
    {
        if (isHide && isClicked)
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
        // add it into journal and remove it in environment
        InventoryManager.Instance.AddItem(itemDetails);

        if(itemDetails.isEvidence)
        DialogueManager.GetInstance().SetVariableState(itemDetails.itemName.ToString(), itemDetails.isEvidence);

        this.gameObject.SetActive(false);
    }
}
