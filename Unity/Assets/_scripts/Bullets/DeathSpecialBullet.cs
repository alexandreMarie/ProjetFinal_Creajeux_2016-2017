using UnityEngine;
using System.Collections;

public class DeathSpecialBullet : MonoBehaviour {

    Transform boss;

    Vector3 pos;
    public float speed;

    // Use this for initialization
    void Start () {
        boss = GameObject.FindObjectOfType<BossManager>().transform;
	}
	
	// Update is called once per frame
	void Update () {
        pos = transform.position;
        pos += transform.position - boss.position;
        transform.position = pos.normalized * Time.unscaledDeltaTime * speed;
	}

    private void OnTriggerEnter(Collider other)
    {
        Destroy(this);    
    }

    private void OnDestroy()
    {
        this.GetComponent<PlayerBullet>().enabled = true;
    }
}
