﻿using System.Collections;
using UnityEngine;


/// <summary>
/// PATTERNS FILE
/// At the moment, contains all the boss patterns algorithms.
/// 
/// TO DO
/// - Split the file if possible and convenient
/// - Add additional parameters to the methods so they can be modulated from the Update
/// - Now that the test panel is implemented, serialize fields that make sense for quick editor tests
/// - Correct the angle bug when angle2 hits 361° (making angle2 % 360 smaller than angle1 % 360)
/// - Test all kinds of bullets
/// - General miscellaneous cleanup if possible
/// </summary>

public class Patterns : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;

    private int bulletQuantityPhyllotaxis = 500; //Quantity of bullets to fire for the phyllotaxis
    private int bulletQuantityBurst = 30; //Quantity of bullets to fire for the bursts
    private float divergence = 137.5f; //Divergence angle
    private float bulletDelay = 0.005f; //Delay between bullets

    int angle1 = 100;
    int angle2 = 170;

    void Update()
    {
        //Test panel for patterns : 1-3 phyllotaxis | 4-5 burst
        if (Input.GetKeyDown(KeyCode.Alpha1))
            StartCoroutine(Phyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));

        if (Input.GetKeyDown(KeyCode.Alpha2))
            StartCoroutine(OpenPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));

        if (Input.GetKeyDown(KeyCode.Alpha3))
            StartCoroutine(FocusedPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));

        if (Input.GetKeyDown(KeyCode.Alpha4))
            StartCoroutine(Burst(bullet, bulletQuantityBurst));

        if (Input.GetKeyDown(KeyCode.Alpha5))
            StartCoroutine(OpenBurst(bullet, bulletQuantityBurst, angle1, angle2));
    }

    private IEnumerator StartPattern()
    {
        //int i1 = 100;
        //int i2 = 170;

        //StartCoroutine(Phyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));
        //yield return new WaitForSeconds(2.0f);

        //StartCoroutine(Burst(bullet, bulletQuantityBurst));
        //yield return new WaitForSeconds(4.0f);

        //StartCoroutine(OpenPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));
        //yield return new WaitForSeconds(5.0f);

        //for (int i = 0; i < 30; i++)
        //{
        //    StartCoroutine(OpenBurst(bullet, bulletQuantityBurst, i1, i2));
        //    i1 += 5;
        //    i2 += 5;
        //    yield return new WaitForSeconds(0.01f);
        //}

        //StartCoroutine(FocusedPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));
        //yield return new WaitForSeconds(2.0f);

        yield return new WaitForSeconds(1.0f);
    }

    private IEnumerator Phyllotaxis(Transform bullet, float divergence, int bulletQuantity)
    {
        for (int floret = 0; floret < bulletQuantity; floret++)
        {
            float phi = floret * divergence;

            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            yield return new WaitForSeconds(bulletDelay);
        }
    }

    private IEnumerator FocusedPhyllotaxis(Transform bullet, float divergence, int bulletQuantity)
    {
        for (int floret = 0; floret < bulletQuantity; floret++)
        {
            float phi = floret * divergence;
            if ((phi % 360 > 200) && (phi % 360 < 250))
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            yield return new WaitForSeconds(bulletDelay);
        }
    }

    private IEnumerator OpenPhyllotaxis(Transform bullet, float divergence, int bulletQuantity)
    {
        int i1 = 100;
        int i2 = 170;

        for (int floret = 0; floret < bulletQuantity; floret++)
        {
            float phi = floret * divergence;
            if ((phi % 360 < i1) || (phi % 360 > i2))
            {
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
                //i1 += 1;
                //i2 += 1;
            }

            yield return new WaitForSeconds(bulletDelay);
        }
    }

    private IEnumerator Burst(Transform bullet, int bulletQuantity)
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

    private IEnumerator OpenBurst(Transform bullet, int bulletQuantity, int i1, int i2)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;
        for (int i = 0; i < bulletQuantity; i++)
        {
            if ((phi % 360 < i1) || (phi % 360 > i2))
            {
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
            }

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
    }
}