using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Letters : MonoBehaviour
{
    public BeforeGameManager beforeGameManager;
    public bool isClicked = false;

    private void OnEnable()
    {
        isClicked = false ;
    }

    public void OpenLetters()
    {
        if (isClicked)
        {
            gameObject.SetActive(false);
            beforeGameManager.SwitchLetters();
        }
    }
}
