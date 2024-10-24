using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : Singleton<AudioManager>
{
    public AudioSource BGMSource;
    public AudioSource FXSource;

    private void OnEnable()
    {
        EventHandler.PlayFXAudioEvent += OnFXEvent;
        EventHandler.PlayBGMAudioEvent += OnBGMEvent;
    }

    private void OnDisable()
    {
        EventHandler.PlayFXAudioEvent -= OnFXEvent;
        EventHandler.PlayBGMAudioEvent -= OnBGMEvent;
    }

    public void OnFXEvent(AudioClip audioClip)
    {
        FXSource.clip = audioClip;
        FXSource.Play();
    }

    public void OnBGMEvent(AudioClip audioClip)
    {
        BGMSource.clip = audioClip;
        BGMSource.Play();
    }
}
