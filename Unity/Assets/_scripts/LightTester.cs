using UnityEngine;
using System.Collections;

public class LightTester : MonoBehaviour {

    public LightsController lc;

    public EmissiveController ec;

    public BloomController bc;

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
                ec.TurnEmissive = true;
                bc.TurnBloom = true;
            }
            else
            {
                lc.TurnLight = true;
                ec.TurnEmissive = false;
                bc.TurnBloom = false;
            }
        }	
	}
}
