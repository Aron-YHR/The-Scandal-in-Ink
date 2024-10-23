using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : Singleton<UIManager>
{
    public FamilyMember_SO familyMembers;

    public bool isJournalOpened = false;

    private void OnEnable()
    {
        EventHandler.StartNewGameEvent += OnStartNewGameEvent;
    }

    private void OnDisable()
    {
        EventHandler.StartNewGameEvent -= OnStartNewGameEvent;
    }

    private void OnStartNewGameEvent()
    {
        SetOriginalData();
    }

    private void SetOriginalData() // set the family data to original ones
    {
        for (int i = 0; i<familyMembers.familyMembersList.Count; i++)
        {
            familyMembers.familyMembersList[i].wellbeing = 50;
            familyMembers.familyMembersList[i].isDead = false;
            familyMembers.familyMembersList[i].state = LifeState.Unwell;
        }
    }

    public void ActivateJournal()
    {
        isJournalOpened = true;
    }

    public void DesactivateJournal()
    {
        isJournalOpened = false;
    }

}
