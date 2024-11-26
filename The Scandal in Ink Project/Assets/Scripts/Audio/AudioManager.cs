using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class AudioManager : Singleton<AudioManager>
{
    public AudioSource BGMSource;
    public AudioSource SESource;
    public AudioSource transitionSource;

    public AudioMixer audioMixer;

    public Slider masterVolumeSlider;
    public Slider bgmVolumeSlider;
    public Slider seVolumeSlider;

    [Header("Music Clips Lists")]
    public List<AudioClip> audioClipsForBookClose = new List<AudioClip>();
    public List<AudioClip> audioClipsForBookOpen = new List<AudioClip>();
    public List<AudioClip> audioClipsForBookFlip = new List<AudioClip>();
    public List<AudioClip> audioClipsForLetter = new List<AudioClip>();
    public List<AudioClip> audioClipsForNoteTaking = new List<AudioClip>();
    public List<AudioClip> audioClipsForStamp = new List<AudioClip>();
    public List<AudioClip> audioClipsForPlayerMove = new List<AudioClip>();

    public float fadeDuration;

    public bool isFading;


    private void OnEnable()
    {
        OnSetSliderEvent();

        EventHandler.PlaySEAudioEvent += OnSEEvent;
        EventHandler.PlayBGMAudioEvent += OnBGMEvent;
        EventHandler.PlayTransitionAudioEvent += OnTransitionAudioEvent;
        EventHandler.PlaySEAudioEvent_Random += OnSEEvent_Random;
        //EventHandler.SetSliderVolumeEvent += OnSetSliderEvent;

        masterVolumeSlider.onValueChanged.AddListener(OnMainVolumeChangeEvent);
        bgmVolumeSlider.onValueChanged.AddListener(OnBGMVolumeChangeEvent);
        seVolumeSlider.onValueChanged.AddListener(OnSEVolumeChangeEvent);
    }

    private void OnDisable()
    {
        EventHandler.PlaySEAudioEvent -= OnSEEvent;
        EventHandler.PlayBGMAudioEvent -= OnBGMEvent;
        EventHandler.PlayTransitionAudioEvent -= OnTransitionAudioEvent;
        EventHandler.PlaySEAudioEvent_Random -= OnSEEvent_Random;

        //EventHandler.SetSliderVolumeEvent -= OnSetSliderEvent;
        //EventHandler.ChangeVolumeEvent -= OnVolumeChangeEvent;
        masterVolumeSlider.onValueChanged.RemoveListener(OnMainVolumeChangeEvent);
        bgmVolumeSlider.onValueChanged.RemoveListener(OnBGMVolumeChangeEvent);
        seVolumeSlider.onValueChanged.RemoveListener(OnSEVolumeChangeEvent);
    }

    public void OnSEEvent(AudioClip audioClip)
    {
        SESource.clip = audioClip;
        SESource.Play();
    }

    public void OnSEEvent_Random(MusicType musicType)
    {
        switch (musicType)
        {
            case MusicType.BookClose: SESource.clip = audioClipsForBookClose[Random.Range(0, audioClipsForBookClose.Count)]; break;
            case MusicType.BookOpen: SESource.clip = audioClipsForBookOpen[Random.Range(0, audioClipsForBookOpen.Count)]; break;
            case MusicType.BookFlip: SESource.clip = audioClipsForBookFlip[Random.Range(0, audioClipsForBookFlip.Count)]; break;
            case MusicType.Letter: SESource.clip = audioClipsForLetter[Random.Range(0, audioClipsForLetter.Count)]; break;
            case MusicType.NoteTaking: SESource.clip = audioClipsForNoteTaking[Random.Range(0, audioClipsForNoteTaking.Count)]; break;
            case MusicType.Stamp: SESource.clip = audioClipsForStamp[Random.Range(0, audioClipsForStamp.Count)]; break;
            //case MusicType.PlayerMove: SESource.clip = audioClipsForPlayerMove[Random.Range(0, audioClipsForPlayerMove.Count)]; break;
        }
        SESource.Play();
    }

    public IEnumerator BGMFading(AudioClip audioClip)
    {
        if (audioClip == null)
        {
            yield return AudioFade(0);
        }
        else
        {
            if (BGMSource.clip != null)
                yield return AudioFade(0);

            BGMSource.clip = audioClip;
            BGMSource.Play();

            yield return AudioFade(1);
        }
    }

    public void OnBGMEvent(AudioClip audioClip)
    {
        if(!isFading )
        StartCoroutine(BGMFading(audioClip));
    }

    public void OnTransitionAudioEvent(AudioClip audioClip)
    {
        if (audioClip == null)
        {
            transitionSource.clip = audioClipsForPlayerMove[Random.Range(0, audioClipsForPlayerMove.Count)];
            transitionSource.Play();
        }
        else
        {
            transitionSource.clip = audioClip;
            transitionSource.Play();
        }
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

    public void OnSEVolumeChangeEvent(float amount)
    {
        audioMixer.SetFloat("SEVolume", amount * 100 - 80);
        //EventHandler.CallPlayChangeVolumeEvent(amount);
    }

    public void OnSetSliderEvent()
    {
        float amount = 0;
        audioMixer.GetFloat("MasterVolume", out amount);
        
        masterVolumeSlider.value = (amount+80) /100 ;//Debug.Log((amount + 80) / 100);
        audioMixer.GetFloat("BGMVolume", out amount);
        
        bgmVolumeSlider.value = (amount + 80) /100; //Debug.Log(masterVolumeSlider.value);
        audioMixer.GetFloat("SEVolume", out amount);
        //Debug.Log(amount);
        seVolumeSlider.value = (amount + 80) /100; //Debug.Log(masterVolumeSlider.value);
    }

    private IEnumerator AudioFade(float targetVolume)
    {
        isFading = true;

        //fadeCanvasGroup.blocksRaycasts = true;

        //float speed = Mathf.Abs(fadeCanvasGroup.alpha - targetAlpha) / fadeDuration;

        float speed = Mathf.Abs(BGMSource.volume - targetVolume) / fadeDuration;

        while (!Mathf.Approximately(BGMSource.volume, targetVolume))
        {
            //fadeCanvasGroup.alpha = Mathf.MoveTowards(fadeCanvasGroup.alpha, targetAlpha, speed * Time.deltaTime);
            BGMSource.volume = Mathf.MoveTowards(BGMSource.volume, targetVolume, speed * Time.deltaTime);
            yield return null;
        }

        //fadeCanvasGroup.blocksRaycasts = false;

        isFading = false;
    }
}
