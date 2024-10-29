using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class AudioManager : Singleton<AudioManager>
{
    public AudioSource BGMSource;
    public AudioSource FXSource;

    public AudioMixer audioMixer;

    public Slider masterVolumeSlider;
    public Slider bgmVolumeSlider;
    public Slider fxVolumeSlider;

    protected override void Awake()
    {
        base.Awake();
        //OnSetSliderEvent();

    }

    private void OnEnable()
    {
        OnSetSliderEvent();

        EventHandler.PlayFXAudioEvent += OnFXEvent;
        EventHandler.PlayBGMAudioEvent += OnBGMEvent;
        //EventHandler.SetSliderVolumeEvent += OnSetSliderEvent;

        masterVolumeSlider.onValueChanged.AddListener(OnMainVolumeChangeEvent);
        bgmVolumeSlider.onValueChanged.AddListener(OnBGMVolumeChangeEvent);
        fxVolumeSlider.onValueChanged.AddListener(OnFXVolumeChangeEvent);
    }

    private void OnDisable()
    {
        EventHandler.PlayFXAudioEvent -= OnFXEvent;
        EventHandler.PlayBGMAudioEvent -= OnBGMEvent;
        //EventHandler.SetSliderVolumeEvent -= OnSetSliderEvent;
        //EventHandler.ChangeVolumeEvent -= OnVolumeChangeEvent;
        masterVolumeSlider.onValueChanged.RemoveListener(OnMainVolumeChangeEvent);
        bgmVolumeSlider.onValueChanged.RemoveListener(OnBGMVolumeChangeEvent);
        fxVolumeSlider.onValueChanged.RemoveListener(OnFXVolumeChangeEvent);
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

    public void OnMainVolumeChangeEvent(float amount)
    {
        audioMixer.SetFloat("MasterVolume", amount*100-80);
        //EventHandler.CallPlayChangeVolumeEvent(amount);
    }

    public void OnBGMVolumeChangeEvent(float amount)
    {
        audioMixer.SetFloat("BGMVolume", amount * 100 - 80);
        //EventHandler.CallPlayChangeVolumeEvent(amount);
    }

    public void OnFXVolumeChangeEvent(float amount)
    {
        audioMixer.SetFloat("FXVolume", amount * 100 - 80);
        //EventHandler.CallPlayChangeVolumeEvent(amount);
    }

    public void OnSetSliderEvent()
    {
        float amount = 0;
        audioMixer.GetFloat("MasterVolume", out amount);
        
        masterVolumeSlider.value = (amount+80) /100 ;//Debug.Log((amount + 80) / 100);
        audioMixer.GetFloat("BGMVolume", out amount);
        
        bgmVolumeSlider.value = (amount + 80) /100; //Debug.Log(masterVolumeSlider.value);
        audioMixer.GetFloat("FXVolume", out amount);
        //Debug.Log(amount);
        fxVolumeSlider.value = (amount + 80) /100; //Debug.Log(masterVolumeSlider.value);
    }
}
