using System;
using System.Collections;
using UnityEngine;


public class Patterns : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;
    [SerializeField]
    private Transform emitter;

    private int bulletQuantity = 20; //Quantity of bullets to fire
    private int floret = 1; //Number of the current floret
    private float divergence = 137.5f; //Divergence angle
    private float bulletDelay = 0.0005f; //Delay between bullets

    void Start()
    {
        emitter = transform;
        StartCoroutine(StartPattern());
    }

    IEnumerator StartPattern()
    {
        //StartCoroutine(Phyllotaxis(emitter, bullet, divergence, floret, bulletQuantity));
        StartCoroutine(Burst(emitter, bullet, bulletQuantity));
        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator Phyllotaxis(Transform emitter, Transform bullet, float divergence, int floret, int bulletQuantity)
    {
        for (int i = 0; i < bulletQuantity; i++)
        {
            float phi = floret * divergence;

            Instantiate(bullet, emitter.position, Quaternion.Euler(0, phi, 0));

            floret++;

            yield return new WaitForSeconds(bulletDelay);
        }   
    }

    private IEnumerator Burst(Transform emitter, Transform bullet, int bulletQuantity)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            Instantiate(bullet, emitter.position, Quaternion.Euler(0, phi, 0));

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
    }
}