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

    public static event Action StartNewGameEvent;

    public static void CallStartNewGameEvent()
    {
        StartNewGameEvent?.Invoke();
    }

    public static event Action<AudioClip> PlayFXAudioEvent;

    public static void CallPlayFXAudioEvent(AudioClip audioClip)
    {
        PlayFXAudioEvent?.Invoke(audioClip);
    }

    public static event Action<AudioClip> PlayBGMAudioEvent;

    public static void CallPlayBGMAudioEvent(AudioClip audioClip)
    {
        PlayBGMAudioEvent?.Invoke(audioClip);
    }


}
