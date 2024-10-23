using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "FamilyMemberList_SO", menuName = "Family/FamilyMemberList_SO")]
public class FamilyMember_SO : ScriptableObject
{ 
    public List<FamilyMember> familyMembersList = new List<FamilyMember>();
 
}

[System.Serializable]
public class FamilyMember
{
    public string name;
    public int wellbeing;
    public bool isDead;
    public LifeState state;
    public List<Sprite> familyMemberImages;

    public LifeState GetLifeState(int wellbeing)
    {
        if (wellbeing != 0)
            wellbeing = wellbeing / 25 + 1;
        else if (wellbeing == 100) wellbeing = 4;
        Debug.Log(wellbeing);
        LifeState lifeState = 0;
        switch (wellbeing)
        {
            case 0: lifeState = LifeState.Dead; break;
            case 1: lifeState = LifeState.Sickly; break;
            case 2: lifeState = LifeState.Unwell; break;
            case 3: lifeState = LifeState.Fine; break;
            case 4: lifeState = LifeState.Healthy; break;
        }
        return lifeState;
    }
}
