﻿using UnityEngine;
using System.Collections;

public class WarSpecialBullet : MonoBehaviour {

    Transform boss;

    public enum Phase { appearance, hit, disintegration }

    Phase phase = Phase.appearance;
    // Use this for initialization
    void Start () {
        boss = GameObject.FindObjectOfType<BossManager>().transform;
       
    }
	
	// Update is called once per frame
	void Update () {

        switch(phase)
        {
            case Phase.appearance:
                phase = Phase.hit;
                break;
            case Phase.hit:
                transform.position = boss.position + new Vector3(0f, 1.5f, 0f);
            
                break;
            case Phase.disintegration:
                break;
        }
      
        
    }
}
