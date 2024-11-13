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

    public static event Action<AudioClip> PlaySEAudioEvent;

    public static void CallPlaySEAudioEvent(AudioClip audioClip)
    {
        PlaySEAudioEvent?.Invoke(audioClip);
    }

    public static event Action<MusicType> PlaySEAudioEvent_Random;

    public static void CallPlaySEAudioEvent_Random(MusicType musicType)
    {
        PlaySEAudioEvent_Random?.Invoke(musicType);
    }

    public static event Action<AudioClip> PlayBGMAudioEvent;

    public static void CallPlayBGMAudioEvent(AudioClip audioClip)
    {
        PlayBGMAudioEvent?.Invoke(audioClip);
    }

    public static event Action<AudioClip> PlayTransitionAudioEvent;
    public static void CallPlayTransitionAudioEvent(AudioClip audioClip)
    {
        PlayTransitionAudioEvent?.Invoke(audioClip);
    }

    /*public static event Action<string,float> ChangeVolumeEvent;

    public static void CallPlayChangeVolumeEvent(string name,float amount)
    {
        ChangeVolumeEvent?.Invoke(name,amount);
    }

    public static event Action SetSliderVolumeEvent;

    public static void CallPlayChangeVolumeEvent()
    {
        SetSliderVolumeEvent?.Invoke();
    }*/
}
