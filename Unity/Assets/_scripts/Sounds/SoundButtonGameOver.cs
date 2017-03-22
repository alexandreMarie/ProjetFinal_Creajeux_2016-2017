using UnityEngine;
using System.Collections;

public class SoundButtonGameOver : MonoBehaviour {

    public AudioSource soundButton;
    
    bool isPlay = true;
    bool isSound = false;

    Animator anim;
    // Use this for initialization
    void Start () {
        soundButton.clip = SoundsManager.Instance.MenuMusic[0];
        anim = transform.GetComponent<Animator>();
    }

    void Update()
    {
    }
    // Update is called once per frame
    public void SoundButton()
    {
        if (isSound)
        {
            soundButton.Play();
        }
    }
}
