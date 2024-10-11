using System;
using UnityEngine;

public static class EventHandler
{
    public static event Action<ItemDetails> IsClickedEvent;

    public static void CallIsClickedEvent(ItemDetails itemDetails)
    {
        IsClickedEvent?.Invoke(itemDetails);
    }


    public static event Action BeforeSceneUnloadEvent;

    public static void CallBeforeSceneUnloadEvent()
    {
        BeforeSceneUnloadEvent?.Invoke();
    }

    public static event Action AfterSceneLoadedEvent;

    public static void CallAfterSceneLoadedEvent()
    {
        AfterSceneLoadedEvent?.Invoke(); 
    }

    public static event Action<string,string> EvidenceObservedEvent;

    public static void CallEvidenceObservedEvent(string name,string value)
    {
        EvidenceObservedEvent?.Invoke(name,value);
    }
}