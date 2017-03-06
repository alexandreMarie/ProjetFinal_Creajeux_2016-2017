using UnityEngine;
using System.Collections;

public class AnimController : MonoBehaviour {

    public Animator anim;
    public Rigidbody rb;

    bool dead;
	// Use this for initialization
	void Start () {
        
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey(KeyCode.Z))
        {
            rb.velocity = transform.forward * 0.4f;
            anim.SetFloat("Velocity", rb.velocity.magnitude);
        }
        else
        {
            rb.velocity = transform.forward * .0f;
            anim.SetFloat("Velocity", rb.velocity.magnitude);
        }

        if(Input.GetKeyDown(KeyCode.P))
        {
            dead = anim.GetBool("Dead");
            if(!dead)
            {
                dead = true; 
            }
            else
            {
                dead = false;
            }
            anim.SetBool("Dead", dead);
        }
    }
}
