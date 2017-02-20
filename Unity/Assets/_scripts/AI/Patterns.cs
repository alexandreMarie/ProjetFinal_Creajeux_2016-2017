using System;
using System.Collections;
using UnityEngine;

//DISABLING "Code cannot be reached" WARNINGS
//DISABLING "XX is never used" WARNINGS
//Please be a responsible developer and do NOT use those.
//Do what I say, not what I do.
#pragma warning disable 0162
#pragma warning disable 0169

/// <summary>
/// PATTERNS FILE
/// Contains all the pattern algorithms.
/// </summary>

/// <summary>
/// TO DO
/// - Add additional parameters to the methods so they can be modulated from the Update (parameters I need TBC)
/// - Correct the angle bug when angle2 hits 361° (making angle2 % 360 smaller than angle1 % 360)
/// - Pattern ideas : Malthaël
/// </summary>

public class Patterns : MonoBehaviour
{
    private const float bps = 60.38f; // 60.38 bullets per second (generic phyllotaxis)

    #region Patterns Coroutines
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

            yield return new WaitForSeconds(0.005f);
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

            yield return new WaitForSeconds(0.005f);
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

    private IEnumerator OpenBurst(Transform bullet, uint bulletQuantity, uint angle1, uint angle2)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            if ((phi < angle1) || (phi > angle2))
            {
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
            }

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(0.2f);
    }

    private IEnumerator QuadLasers(LineRenderer laser)
    {
        throw new NotImplementedException();

        Ray ray1 = new Ray(transform.position, transform.forward);
        Ray ray2 = new Ray(transform.position, transform.right);
        Ray ray3 = new Ray(transform.position, -transform.right);
        Ray ray4 = new Ray(transform.position, -transform.forward);

        yield return null;
    }
    #endregion

    #region Accessors
    public void LaunchPhyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence, bulletQuantity));
    }

    public void LaunchFocusedPhyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
        StartCoroutine(FocusedPhyllotaxis(bullet, divergence, bulletQuantity));
    }

    public void LaunchOpenPhyllotaxis(Transform bullet, float divergence, uint bulletQuantity)
    {
        StartCoroutine(OpenPhyllotaxis(bullet, divergence, bulletQuantity));
    }

    public void LaunchBurst(Transform bullet, uint bulletQuantity)
    {
        StartCoroutine(Burst(bullet, bulletQuantity));
    }

    public void LaunchOpenBurst(Transform bullet, uint bulletQuantity)
    {
        StartCoroutine(OpenBurst(bullet, bulletQuantity, 0, 100));
    }
    #endregion
}