using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SoundsManager : MonoBehaviour {


    private static SoundsManager instance = null;

    [SerializeField]
    private AudioSource sourceMusic;

    [SerializeField]
    private List<AudioClip> menuMusic;
    [SerializeField]
    private List<AudioClip> ambientMusic;
    [SerializeField]
    private List<AudioClip> sfxMusic;

    [SerializeField]
    private float volumeMenuMusic = 1.0f;

    [SerializeField]
    private float volumeAmbientMusic = 1.0f;

    [SerializeField]
    private float volumeSFX = 1.0f;

    public static SoundsManager Instance
    {
        get
        {
            return instance;
        }
    }

    public float VolumeMenuMusic
    {
        get
        {
            return volumeMenuMusic;
        }

        set
        {
            volumeMenuMusic = value;
        }
    }

    public float VolumeAmbientMusic
    {
        get
        {
            return volumeAmbientMusic;
        }

        set
        {
            volumeAmbientMusic = value;
            sourceMusic.volume = volumeAmbientMusic;
        }
    }

    public float VolumeSFX
    {
        get
        {
            return volumeSFX;
        }

        set
        {
            volumeSFX = value;
        }
    }

    public List<AudioClip> SfxMusic
    {
        get
        {
            return sfxMusic;
        }
        
    }

    public List<AudioClip> AmbientMusic
    {
        get
        {
            return ambientMusic;
        }
    }

    public List<AudioClip> MenuMusic
    {
        get
        {
            return menuMusic;
        }
    }




    // Use this for initialization
    void Start () {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(this);

            sourceMusic.clip = sfxMusic[0];
           // sourceMusic.Play();
        }

    }
	
	// Update is called once per frame
	void Update () {
	    
	}
}
