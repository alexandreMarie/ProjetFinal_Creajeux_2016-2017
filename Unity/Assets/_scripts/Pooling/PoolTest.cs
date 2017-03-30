using UnityEngine;
using System.Collections;

public class PoolTest : MonoBehaviour {

    [SerializeField]
    GameObject model;

    Pool pool;

    Vector3 velocityStart = new Vector3(0, 100, 0);

	// Use this for initialization
	void Start () {
        GameObject go = new GameObject("Pool_Machin", typeof(Pool));
        pool = go.GetComponent<Pool>();
        pool.Init(model, 0);
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey(KeyCode.Space))
        {
            pool.Get();
        }
	}
}
