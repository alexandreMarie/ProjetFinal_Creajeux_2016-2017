using UnityEngine;
using System.Collections;

public class BloomTester : MonoBehaviour {

    public BloomController bc;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (bc.TurnBloom == true)
            {
                bc.TurnBloom = false;
            }
            else
            {
                bc.TurnBloom = true;
            }
        }
	}
}
