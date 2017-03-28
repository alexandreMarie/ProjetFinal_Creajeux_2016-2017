using UnityEngine;

public class SoundAnimation : MonoBehaviour
{
    public AudioSource sourceMusic;
    
    void Attack()
    {
        sourceMusic.clip = SoundsManager.Instance.SfxMusic[0];
        sourceMusic.Play();
    }
}