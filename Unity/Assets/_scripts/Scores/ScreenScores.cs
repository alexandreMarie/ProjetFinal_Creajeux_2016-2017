using UnityEngine;
using System.Collections;

public class ScreenScores : MonoBehaviour {

    public GameObject planeScreen;
    public GameObject[] planeExplo;
	// Use this for initialization
	void Start () {
        planeScreen.GetComponent<Renderer>().material.mainTexture = GameManager.Instance.TexScreen;
        for(int i = 0; i<planeExplo.Length; i++)
        {
            planeExplo[i].GetComponent<Renderer>().material.mainTexture = GameManager.Instance.TexScreen;
        }
      

    }
	
}
