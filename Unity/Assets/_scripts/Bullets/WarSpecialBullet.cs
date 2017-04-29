using UnityEngine;
using System.Collections;

public class WarSpecialBullet : MonoBehaviour {

    Transform boss;
    float time;
    public enum Phase { appearance, up, down, disintegration }
    float posY = 1.5f;
    int damage = 500;
    bool firstHit = false;
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
                phase = Phase.up;
                break;
            case Phase.up:
                time += Time.deltaTime;
                transform.position = boss.position + new Vector3(0f, posY, 0f);
                GetComponent<Animator>().enabled = true;
                if (time > 1.0f)
                {
                    posY = Mathf.Lerp(transform.position.y, boss.position.y + 1.0f, 0.05f);
                    if (transform.position.y >= 4.0f)
                    {
                        phase = Phase.down;                        
                        GetComponent<Animator>().enabled = false;

                    }
                }
                break;
            case Phase.down:
                posY = Mathf.Lerp(transform.position.y, boss.position.y - 8.0f, 0.5f);
                transform.position = boss.position + new Vector3(0f, posY, 0f);
                break;
            case Phase.disintegration:
                break;
        }
        
    }
    void OnCollisionEnter(Collision col)
    {
        if(col.transform.tag == "Boss" && !firstHit)
        {
            Destroy(gameObject, 2f);
            phase = Phase.disintegration;
            col.transform.GetComponent<BossManager>().Life -= damage;
            firstHit = true;
        }
    }
}
