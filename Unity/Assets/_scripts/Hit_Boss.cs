 using UnityEngine;
using System.Collections;

public class Hit_Boss : MonoBehaviour {

    static float Attack;

    [SerializeField]
    private LifeManager Lief_Bar;
    static float lifeBar = 0.0f;
    static float Max_Life;
    public static float LifeBar
    {
        get
        {
            return lifeBar;
        }

        set
        {
            lifeBar = value;
            Max_Life = value;
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
            Lief_Bar.UpdateLifeBar((int)Max_Life,(int)lifeBar);
            Destroy(col.gameObject);
        }
    }
}
