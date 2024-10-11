using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class DialogueVariables
{
    public Dictionary<string, Ink.Runtime.Object> variables;

    public DialogueVariables(TextAsset loadGlobalsJSON)
    {
        Story globalVariablesStory = new Story(loadGlobalsJSON.text);

        variables = new Dictionary<string, Ink.Runtime.Object>();
        foreach(string name in globalVariablesStory.variablesState)
        {
            Ink.Runtime.Object value = globalVariablesStory.variablesState.GetVariableWithName(name);
            variables.Add(name, value);
            //((Ink.Runtime.StringValue)value).value;
            Debug.Log("Initialized global dialogue variable:" + name+ " = " + value);
        }
    }

    public void StartListening(Story story)
    {
        // set variables to story before assigning the listener
        VariablesToStroy(story);
        story.variablesState.variableChangedEvent += VariableChanged;
    }

    public void StopListening(Story story)
    {
        story.variablesState.variableChangedEvent -= VariableChanged;
    }

    public void StartListeningEvir()
    {
       // EventHandler.EvidenceObservedEvent += VariableChanged;
    }


    public void VariableChanged(string name, Ink.Runtime.Object value)
    {
        Debug.Log("Variable changed: "+name+" = "+value);
        if (variables.ContainsKey(name))
        {
            variables.Remove(name);
            variables.Add(name, value);
        }
    }

    private void VariablesToStroy(Story story)
    {
        foreach(KeyValuePair<string,Ink.Runtime.Object> variable in variables)
        {
            story.variablesState.SetGlobal(variable.Key, variable.Value);
        }
    }
}
