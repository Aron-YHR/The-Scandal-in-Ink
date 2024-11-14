using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item : MonoBehaviour
{
    public ItemDetails itemDetails;
    //public AnimationClip clip;
    public bool isHide;
    public bool notInJournal;

    public bool isClicked;

    private Vector3 previousPos;

    private void Start()
    {
        itemDetails = InventoryManager.Instance.itemData.GetItemDetails(itemDetails.itemName);
        if(isHide)
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
        // show the item and its info
        UIManager.Instance.SetItemShowcase(gameObject,itemDetails);


        // add it into journal and remove it in environment
        if(itemDetails.value == 0 || notInJournal)
        InventoryManager.Instance.AddItem(itemDetails);

        if(itemDetails.isEvidence)
        DialogueManager.GetInstance().SetVariableState(itemDetails.itemName.ToString(), itemDetails.isEvidence);

        if(notInJournal)
        this.gameObject.SetActive(false);
    }

    public void SetOriginalPos()
    {
        transform.position = previousPos;
    }
}
