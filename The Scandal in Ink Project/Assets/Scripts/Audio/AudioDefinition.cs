using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioDefinition : MonoBehaviour
{
    // put this script in Empty Object, set the audio clip for BGM(should be played on enable) or FX

    public AudioClip audioClip;

    public bool playOnEnable;

    private void OnEnable()
    {
        if (playOnEnable)
            PlayBGMAudioClip();
    }

    public void PlayFXAudioClip()
    {
        EventHandler.CallPlayFXAudioEvent(audioClip);
    }

    public void PlayBGMAudioClip()
    {
        EventHandler.CallPlayBGMAudioEvent(audioClip);
    }
}
