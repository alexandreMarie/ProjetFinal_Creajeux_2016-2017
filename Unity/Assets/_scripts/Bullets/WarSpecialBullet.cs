using UnityEngine;
using System.Collections;

public class WarSpecialBullet : MonoBehaviour {

    Transform boss;
    float time;
    public enum Phase { appearance, up, down, disintegration }
    float posY = 1.5f;
    int damage = 500;
    bool firstHit = false;
    bool firstTime = true;
    Phase phase = Phase.appearance;
    Material mat;
    float lerp;
    float t = 0f;
    GameObject go;


    public GameObject explosionSword;
    IEnumerator Wait2Sec()
    {
        yield return new WaitForSeconds(2);
        phase = Phase.up;
    }

    IEnumerator Wait3Sec()
    {
        yield return new WaitForSeconds(3);
        Destroy(gameObject);
        Destroy(go);
    }
    void Start () {
        boss = GameObject.FindObjectOfType<BossManager>().transform;
        mat = GetComponent<MeshRenderer>().material;
        mat.SetFloat("_Alpha", 0f);
    }
	
	// Update is called once per frame
	void Update () {
        switch(phase)
        {
            case Phase.appearance:
                transform.position = boss.position + new Vector3(0f, posY, 0f);
                //StartCoroutine(Wait2Sec());
                lerp = Mathf.Lerp(0, 0.65f, t);
                t += 0.1f*Time.deltaTime;
                mat.SetFloat("_Alpha", lerp);
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
                posY = Mathf.Lerp(transform.position.y, boss.position.y - 14.0f, 0.5f);
                transform.position = boss.position + new Vector3(0f, posY, 0f);
                CameraManager.Instance.SpecialIsFinish = true;
                break;
            case Phase.disintegration:
                transform.position = boss.position + new Vector3(0f, posY, 0f);
                if (firstTime)
                {
                    go = Instantiate(explosionSword);
                    firstTime = false;
                }
                go.transform.position = boss.position;
                StartCoroutine(Wait3Sec());
                break;
        }
        
    }
    void OnCollisionEnter(Collision col)
    {
        if(col.transform.tag == "Boss" && !firstHit)
        {
           // Destroy(gameObject, 2f);
            col.transform.GetComponent<BossManager>().Life -= damage;
            firstHit = true;
            phase = Phase.disintegration;
            
        }
    }
}
