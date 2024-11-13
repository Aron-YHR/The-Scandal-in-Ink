using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioDefinition : MonoBehaviour
{
    // put this script in Empty Object, set the audio clip for BGM(should be played on enable) or FX
    [Header("Solo")]
    public AudioClip audioClip;
    public List<AudioClip> transitionAudioClips;
    [Header("BGM")]
    public bool playOnEnable;
    [Header("Random")]
    public bool isRandomPlay;
    public MusicType type;

    private void OnEnable()
    {
        if (playOnEnable)
            PlayBGMAudioClip();
    }

    public void PlayFXAudioClip()
    {
        //Debug.Log(audioClip.name);
        if (isRandomPlay)
            EventHandler.CallPlaySEAudioEvent_Random(type);
        else
            EventHandler.CallPlaySEAudioEvent(audioClip);

    }

    public void PlayBGMAudioClip()
    {
        EventHandler.CallPlayBGMAudioEvent(audioClip);
    }

    public void PlayTransitionAudioEvent(int i)
    {
        EventHandler.CallPlayTransitionAudioEvent(transitionAudioClips[i]);
    }
}
