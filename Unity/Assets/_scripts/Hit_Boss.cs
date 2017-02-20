using UnityEngine;
using System.Collections;

public class Hit_Boss : MonoBehaviour {

    static float Attack;


    static float lifeBar = 0.0f;

    public static float LifeBar
    {
        get
        {
            return lifeBar;
        }

        set
        {
            lifeBar = value;
        }
    }

    void Update()
    {
        Debug.Log("lifeBar : " + lifeBar);
    }

    // Use this for initialization
    void OnTriggerEnter(Collider col)
    {
        if(col.tag == "Bullet")
        {
            Debug.Log("Boss toucher" + lifeBar);
            lifeBar -= 1;
            Destroy(col);
        }
    }
}
