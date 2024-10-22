using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FamilyHP : MonoBehaviour
{
    [SerializeField, Range(0, 2)]  int FamilyNum;
    [SerializeField] float sizeScaler;
    public wellbeingScript FamilyWellbeing;
    // Update is called once per frame


    void FixedUpdate()
    {
        int sizeVal = FamilyWellbeing.FamilyLevel[FamilyNum];

        transform.localScale = new Vector3 (sizeVal * sizeScaler, sizeVal * sizeScaler, sizeVal * sizeScaler);
   
    }
}
