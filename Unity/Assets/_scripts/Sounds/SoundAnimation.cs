using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SoundAnimation : MonoBehaviour {

    
    public AudioSource sourceMusic;
    
    
    void Attack()
    {
        sourceMusic.clip = SoundsManager.Instance.SfxMusic[0];
        sourceMusic.Play();
    }
}
