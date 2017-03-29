using UnityEngine;
using System.Collections;

public class ScreenScores : MonoBehaviour {

    public GameObject planeScreen;
	// Use this for initialization
	void Start () {
        planeScreen.GetComponent<Renderer>().material.mainTexture = GameManager.Instance.TexScreen;
    }
	
	// Update is called once per frame
	void Update () {
    }
}
