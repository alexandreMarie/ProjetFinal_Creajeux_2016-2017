using UnityEngine;
using System.Collections;

public class WarSpecialBullet : MonoBehaviour {

    Transform boss;
    Transform player;

    public float speed = 2f;
	// Use this for initialization
	void Start () {
        boss = GameObject.FindObjectOfType<BossManager>().transform;
        player = GameObject.FindObjectOfType<War>().transform;
       
    }
	
	// Update is called once per frame
	void Update () {

        transform.position = player.position + new Vector3(0f, 1.5f, 0f);
        transform.LookAt(new Vector3(boss.position.x, transform.position.y, boss.position.z), Vector3.down);
        //transform.rotation = Quaternion.Euler(transform.rotation.x, transform.rotation.y + 90.0f, transform.rotation.z);
    }
}
