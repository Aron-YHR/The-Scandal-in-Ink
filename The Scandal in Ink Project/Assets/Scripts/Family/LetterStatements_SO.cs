using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "LetterStatements_SO", menuName = "Family/LetterStatements_SO")]
public class LetterStatements_SO : ScriptableObject
{
    [TextArea]
    public List<string> statementsList = new List<string>();
}
