using UnityEngine;

public class AudioOnDemand : MonoBehaviour
{
    public void PlayIntro()
    {
        GetComponent<AudioSource>().Play();
    }
}