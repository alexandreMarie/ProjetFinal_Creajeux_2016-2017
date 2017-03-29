using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class SoundsManager : MonoBehaviour
{
    private static SoundsManager instance = null;

    [SerializeField]
    private AudioSource sourceMusic;

    [SerializeField]
    private List<AudioClip> menuMusic = null;
    [SerializeField]
    private List<AudioClip> ambientMusic = null;
    [SerializeField]
    private List<AudioClip> sfxMusic = null;

    [SerializeField]
    private float volumeMenuMusic = 1.0f;

    [Range(0, 1)]
    public float volumeAmbientMusic = 0;

    [SerializeField]
    private float volumeSFX = 1.0f;

    private string scene;
    public static SoundsManager Instance
    {
        get
        { return instance; }
    }

    public float VolumeMenuMusic
    {
        get
        { return volumeMenuMusic; }

        set
        { volumeMenuMusic = value; }
    }

    public float VolumeAmbientMusic
    {
        get
        { return volumeAmbientMusic; }

        set
        {
            volumeAmbientMusic = value;
            sourceMusic.volume = volumeAmbientMusic;
        }
    }

    public float VolumeSFX
    {
        get
        { return volumeSFX; }

        set
        { volumeSFX = value; }
    }

    public List<AudioClip> SfxMusic
    {
        get
        { return sfxMusic; }
    }

    public List<AudioClip> AmbientMusic
    {
        get
        { return ambientMusic; }
    }

    public List<AudioClip> MenuMusic
    {
        get
        { return menuMusic; }
    }

    public AudioSource SourceMusic
    {
        get
        { return sourceMusic; }

        set
        { sourceMusic = value; }
    }

    void Start()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(this);
        }

        scene = SceneManager.GetActiveScene().name;

        switch (scene)
        {
            case "Titles":
                break;

            case "Prototype1":
                sourceMusic.clip = ambientMusic[0];
                sourceMusic.Play();
                break;
        }
    }

    void Update()
    {
        if (GameManager.Instance.Dead)
            sourceMusic.Stop();

        sourceMusic.volume = volumeAmbientMusic;
    }
}