using UnityEngine;
using System.Collections;

public class Poolable : MonoBehaviour{

    public Pool pool;

    private void OnDisable()
    {
        pool.Set(gameObject);
    }


    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
