using System;
using System.Collections;
using UnityEngine;


public class Patterns : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;
    [SerializeField]
    private Transform emitter;

    private int bulletQuantity = 500; //Quantity of bullets to fire
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
        StartCoroutine(Phyllotaxis(emitter, bullet, divergence, floret, bulletQuantity));
        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator Phyllotaxis(Transform emitter, Transform bullet, float divergence, int floret, int bulletQuantity)
    {
        for (int i = 0; i <= bulletQuantity; i++)
        {
            //φ = n ∗ 137.5◦ r = c√n
            float phi = floret * divergence;

            Instantiate(bullet, emitter.position, Quaternion.Euler(0, phi, 0));
            floret++;
            yield return new WaitForSeconds(bulletDelay);
        }   
    }
}