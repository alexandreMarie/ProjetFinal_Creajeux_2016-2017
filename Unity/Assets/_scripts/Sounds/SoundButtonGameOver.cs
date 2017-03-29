using UnityEngine;

public class SoundButtonGameOver : MonoBehaviour
{
    public AudioSource soundButton;

    bool isSound = false;

    //Animator anim;

    void Start()
    {
        soundButton.clip = SoundsManager.Instance.MenuMusic[0];
        //anim = transform.GetComponent<Animator>();
    }

    public void SoundButton()
    {
        if (isSound)
            soundButton.Play();
    }
}