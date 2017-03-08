using UnityEngine;
using System.Collections;

public class LightTester : MonoBehaviour {

    public LightsController lc;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (lc.TurnLight == true)
            {
                // les lumieres sont allumées
                lc.TurnLight = false;
            }
            else
            {
                lc.TurnLight = true;
            }
        }	
	}
}
