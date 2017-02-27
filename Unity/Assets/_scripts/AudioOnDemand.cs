using UnityEngine;
using System.Collections;

public class AudioOnDemand : MonoBehaviour
{

    public void PlayIntro()
    {
        GetComponent<AudioSource>().Play();
    }
}
