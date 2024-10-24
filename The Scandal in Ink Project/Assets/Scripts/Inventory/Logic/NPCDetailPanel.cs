using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class NPCDetailPanel : MonoBehaviour
{
    [SerializeField] private Image npcPortrait;
    [SerializeField] private TextMeshProUGUI npcName;
    [SerializeField] private TextMeshProUGUI npcLocation;
    [SerializeField] private TextMeshProUGUI npcInfo;
    //[SerializeField] private TextMeshProUGUI npcStatements;
    //[SerializeField] private List<TextMeshProUGUI> statementsList;

    public GameObject contentList;
    public StatementSlot statementPrefab;

    public void SetNPCIcon(Sprite portrait)
    {
        npcPortrait.sprite = portrait;
    }

    public void SetNPCName(string name)
    {
        npcName.text = name;
    }

    public void SetNPCLocation(string location)
    {
        npcLocation.text = location;
    }

    public void SetNPCInfo(string info)
    {
        npcInfo.text = info;
    }

    public void CreateNewStatement(Statement statement)
    {
        StatementSlot newSlot = Instantiate(statementPrefab, contentList.transform);
        newSlot.statement.text = statement.statementLine;
        newSlot.coverImage.gameObject.SetActive(!statement.isUnlocked);
    }

    public void SetNPCStatements(List<Statement> npcStates)
    {
        /*if (npcStatements != null)
            npcStatements.text = null;

        if (npcStates != null)
        {
            for (int i = 0; i < npcStates.Count; i++)
            {
                npcStatements.text += npcStates[i] + "\n";
            }
        }*/

        for (int i = 0; i < contentList.transform.childCount; i++)
        {
            if (contentList.transform.childCount == 0) break;
            Destroy(contentList.transform.GetChild(i).gameObject);
        }

        if (npcStates != null)
        {
            for (int i = 0; i < npcStates.Count; i++)
            {
                CreateNewStatement(npcStates[i]);
            }
        }

    }



    private void OnDisable()// to be optimized
    {
        SetNPCIcon(null);
        SetNPCName(null);
        SetNPCLocation(null);
        SetNPCInfo(null);
        SetNPCStatements(null);
    }
}
