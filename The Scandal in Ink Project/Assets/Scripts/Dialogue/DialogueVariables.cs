using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class DialogueVariables
{
    public Dictionary<string, Ink.Runtime.Object> variables;

    private Story globalVariablesStory;

    private const string saveVariablesKey = "INK_VARIABLES";

    public DialogueVariables(TextAsset loadGlobalsJSON)
    {
        // create the ink story of variables
        globalVariablesStory = new Story(loadGlobalsJSON.text);

        // if we have saved data, load it
        if (PlayerPrefs.HasKey(saveVariablesKey))
        {
            string jsonState = PlayerPrefs.GetString(saveVariablesKey);
            globalVariablesStory.state.LoadJson(jsonState);
        }

        // initialize the dictionary
        variables = new Dictionary<string, Ink.Runtime.Object>();
        foreach(string name in globalVariablesStory.variablesState)
        {
            Ink.Runtime.Object value = globalVariablesStory.variablesState.GetVariableWithName(name);
            variables.Add(name, value);
            //((Ink.Runtime.StringValue)value).value;
            Debug.Log("Initialized global dialogue variable:" + name+ " = " + value);
        }
    }

    public void SaveVariables()
    {
        if(globalVariablesStory != null)
        {
            // Load the current state of all of our variables to the globals story
            VariablesToStroy(globalVariablesStory);
            // NOTE: eventually, replace this with an actual save/load method rather than using PlayerPrefs 
            PlayerPrefs.SetString(saveVariablesKey, globalVariablesStory.state.ToJson());

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
