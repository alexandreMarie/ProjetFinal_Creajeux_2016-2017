using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XInputDotNetPure;


public class SoundPlayer : MonoBehaviour {

    public AudioSource soundsShoot;
    public AudioSource soundsRun;

    private List<AudioClip> sfxMusic = new List<AudioClip>();
    

    bool recoverSounds = false;
    bool isWalk = false;


    Rigidbody rb;
    GamePadState state;
    void Start () {
        rb = GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {
        if(!recoverSounds)
        {
            for (int i = 0; i < SoundsManager.Instance.SfxMusic.Count; i++)
                sfxMusic.Add(SoundsManager.Instance.SfxMusic[i]);
            recoverSounds = true;
        }
        soundsShoot.clip = sfxMusic[0];
        soundsRun.clip = sfxMusic[1];

        soundsShoot.volume = SoundsManager.Instance.VolumeSFX;
        soundsRun.volume = SoundsManager.Instance.VolumeSFX;
        if (state.Triggers.Right > 0.2f)
        {
           
            soundsShoot.Play();
        }
        if(rb.velocity.magnitude >0.5f /*Input.GetKey(KeyCode.Y)*/)
        {

            if(!isWalk)
            {
                soundsRun.Play();
                isWalk = true;
            }
        }
        else
        {
            soundsRun.Stop();
            isWalk = false;
        }
        /*if(Input.GetKeyDown(KeyCode.T))
        {

            sourceMusic.clip = sfxMusic[0];
            sourceMusic.Play();
        }*/
    }
}
