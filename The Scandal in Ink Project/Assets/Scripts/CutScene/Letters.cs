using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Letters : MonoBehaviour
{
    public BeforeGameManager beforeGameManager;
    public AfterGameManager afterGameManager;
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

            if (beforeGameManager != null)
            {
                beforeGameManager.SwitchLetters();
            }
            else if (afterGameManager != null)
            {
                afterGameManager.SwitchLetters();
            }
        }
    }
}
