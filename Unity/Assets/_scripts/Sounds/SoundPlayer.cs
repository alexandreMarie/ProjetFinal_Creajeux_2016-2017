using UnityEngine;
using System.Collections.Generic;
using XInputDotNetPure;

public class SoundPlayer : MonoBehaviour
{
    public AudioSource shootSound;
    public AudioSource runSound;

    private List<AudioClip> sfxMusic = new List<AudioClip>();

    bool recoverSounds = false;
    bool isWalking = false;

    Rigidbody rb;
    GamePadState state;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    void Update()
    {
        if (!recoverSounds)
        {
            for (int i = 0; i < SoundsManager.Instance.SfxMusic.Count; i++)
                sfxMusic.Add(SoundsManager.Instance.SfxMusic[i]);
            recoverSounds = true;
        }
        shootSound.clip = sfxMusic[0];
        runSound.clip = sfxMusic[1];

        shootSound.volume = SoundsManager.Instance.VolumeSFX;
        runSound.volume = SoundsManager.Instance.VolumeSFX;
        if (state.Triggers.Right > 0.2f || Input.GetKeyDown(KeyCode.T))
            shootSound.Play();

        if (rb.velocity.magnitude > 0.01f)
        {
            if (!isWalking)
            {
                runSound.Play();
                isWalking = true;
            }
        }
        else
        {
            runSound.Stop();
            isWalking = false;
        }
    }
}