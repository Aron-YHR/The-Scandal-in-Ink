using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : Singleton<UIManager>
{
    public bool isJournalOpened = false;

    public void ActivateJournal()
    {
        isJournalOpened = true;
    }

    public void DesactivateJournal()
    {
        isJournalOpened = false;
    }

}
