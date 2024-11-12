using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IntroManager : MonoBehaviour
{
    public DialogueTrigger dialogueTrigger;

    void Start()
    {
        dialogueTrigger.StartDialogue();
    }

    
}
