using System;
using System.Collections;
using UnityEngine;

/// <summary>
/// PATTERNS FILE
/// Contains all the pattern algorithms.
/// </summary>

/// <summary>
/// TO DO
/// - Add additional parameters to the methods so they can be modulated from the Update (what I need TBC)
/// - Correct the angle bug when angle2 hits 361° (making angle2 % 360 smaller than angle1 % 360)
/// - Pattern ideas : Malthaël
/// </summary>

public class Patterns : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;

    [SerializeField]
    private static uint bulletQuantityPhyllotaxis = 604; //Quantity of bullets to fire for the phyllotaxis
    [SerializeField]
    private static uint bulletQuantityBurst = 30; //Quantity of bullets to fire for the bursts
    [SerializeField]
    private static float divergence = 137.5f; //Divergence angle
    [SerializeField]
    private static float bulletDelay = 0.005f; //Delay between bullets

    uint angle1 = 200;
    uint angle2 = 220;

    private const float bps = 60.38f; // 60.38 bullets per second (generic phyllotaxis)

    
            //for (int i = 0; i < 35; i++)
            //{
            //    StartCoroutine(OpenBurst(bullet, bulletQuantityBurst));
            //    angle1 += 10;
            //    angle2 += 10;
            //    yield return new WaitForSeconds(0.2f);
            //}

    private IEnumerator Phyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
            float phi = 0.0f;

            for (int floret = 0; floret < bulletQuantity; floret++)
            {
                phi = floret * divergence;

                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

                yield return new WaitForSeconds(0.05f);
            }

    }

    private IEnumerator FocusedPhyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
        for (int floret = 0; floret < bulletQuantity; floret++)
        {
            float phi = floret * divergence;
            if ((phi % 360 > 200) && (phi % 360 < 250))
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            yield return new WaitForSeconds(bulletDelay);
        }
    }

    private IEnumerator OpenPhyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
        int i1 = 100;
        int i2 = 170;

        for (int floret = 0; floret < bulletQuantity; floret++)
        {
            float phi = floret * divergence;
            if ((phi % 360 < i1) || (phi % 360 > i2))
            {
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
                i1 += 1;
                i2 += 1;

                //Debug.Log(i2 % 360 + " " + i2 % 360);
            }

            yield return new WaitForSeconds(bulletDelay);
        }
    }

    private IEnumerator Burst(Transform bullet, uint bulletQuantity)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator OpenBurst(Transform bullet, uint bulletQuantity)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;
        for (int i = 0; i < bulletQuantity; i++)
        {
            if ((phi < angle1) || (phi > angle2))
            {
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
                //Debug.Log(angle1 + " " + angle2 + " " + phi);
                //if (angle1 > 360)
                //    angle1 = 0;
                //if (angle2 > 360)
                //    angle2 = 0;

                //if (angle1 > angle2)
                //{
                //    int temp = angle1;
                //    angle1 = angle2;
                //    angle2 = temp;
                //}
            }

            phi += additiveAngle;

            //Debug.Log(phi);
        }

        yield return new WaitForSeconds(0.2f);
    }

    private IEnumerator QuadLasers(LineRenderer laser)
    {
        throw 
        while (true)
        {
            Ray ray1 = new Ray(transform.position, transform.forward);
            Ray ray2 = new Ray(transform.position, transform.right);
            Ray ray3 = new Ray(transform.position, -transform.right);
            Ray ray4 = new Ray(transform.position, -transform.forward);

            //thenstantiate(laser, );

            yield return null;
        }
    }

    public void LaunchPhyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence, bulletQuantity));
    }

    public void LaunchBurst(Transform bullet, uint bulletQuantity)
    {
        StartCoroutine(Burst(bullet, bulletQuantity));
    }
}