using UnityEngine;
using System.Collections;

public class ActivateExplosion : MonoBehaviour {

    Rigidbody rb;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
        rb.velocity = transform.forward * 75.0f;

	}
}
