using UnityEngine;

public class AnimController : MonoBehaviour
{
    public Animator anim;
    public Rigidbody rb;

    private bool dead;

    void Update()
    {
        if (Input.GetKey(KeyCode.Z))
            rb.velocity = transform.forward * 0.4f;
        else
            rb.velocity = transform.forward * .0f;

        anim.SetFloat("Velocity", rb.velocity.magnitude);

        if (Input.GetKeyDown(KeyCode.P))
        {
            dead = anim.GetBool("Dead");

            dead = !dead;

            anim.SetBool("Dead", dead);
        }
    }
}
