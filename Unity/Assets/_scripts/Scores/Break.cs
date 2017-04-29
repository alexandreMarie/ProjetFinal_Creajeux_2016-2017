using UnityEngine;
using System.Collections;

public class Break : MonoBehaviour
{
    public GameObject brokenObject;
    public float magnitudeCol, radius, power, upwards;
    public GameObject[] canvas;

    void OnCollisionEnter(Collision collision)
    {
        if (collision.relativeVelocity.magnitude > magnitudeCol)
        {
            Destroy(gameObject);
            Destroy(collision.gameObject);
            brokenObject.SetActive(true);
            Vector3 explosionPos = transform.position;
            Collider[] colliders = Physics.OverlapSphere(explosionPos, radius);

            foreach (Collider hit in colliders)
            {
                if (hit.GetComponent<Rigidbody>())
                {
                    hit.GetComponent<Rigidbody>().AddExplosionForce(power * collision.relativeVelocity.magnitude, explosionPos, radius, upwards);
                }
            }

            if (GameManager.Instance.NbPlayers >= 2)
                canvas[1].SetActive(true);
            else
                canvas[0].SetActive(true);
        }
    }
}

