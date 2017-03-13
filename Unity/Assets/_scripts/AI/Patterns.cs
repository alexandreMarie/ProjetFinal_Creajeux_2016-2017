using System;
using System.Collections;
using UnityEngine;

//DISABLING "Code cannot be reached" WARNINGS
//DISABLING "XX is never used" WARNINGS
//Please be a responsible developer and do NOT use those.
//Do what I say, not what I do.
#pragma warning disable 0162
#pragma warning disable 0168
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
    #region Patterns Coroutines
    private IEnumerator Phyllotaxis(Transform bullet, float divergence)
    {
        float phi = 0.0f;
        uint floret = 0;

        while (true)
        {
            phi = floret * divergence;

            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            floret++;
            yield return new WaitForSeconds(0.05f);
        }

    }

    private IEnumerator FocusedPhyllotaxis(Transform bullet, float divergence)
    {
        float phi = 0.0f;
        uint floret = 0;

        while (true)
        {
            phi = floret * divergence;
            if ((phi % 360 > 200) && (phi % 360 < 250))
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            yield return new WaitForSeconds(0.005f);
        }
    }

    private IEnumerator OpenPhyllotaxis(Transform bullet, float divergence)
    {
        int i1 = 100;
        int i2 = 170;

        uint floret = 0;

        while (true)
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

    private IEnumerator StraightLine(Transform bullet, Transform player, float bulletQuantity)
    {
        Vector3 angle;

        angle = player.position - transform.position;
        angle.y = 2.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            Instantiate(bullet, transform.position, Quaternion.LookRotation(angle, Vector3.forward));
            yield return new WaitForSeconds(0.1f);
        }

        yield return null;
    }
    #endregion

    #region Accessors
    public void LaunchPhyllotaxis(Transform bullet, float divergence)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence));
    }

    public void LaunchFocusedPhyllotaxis(Transform bullet, float divergence)
    {
        StartCoroutine(FocusedPhyllotaxis(bullet, divergence));
    }

    public void LaunchOpenPhyllotaxis(Transform bullet, float divergence)
    {
        StartCoroutine(OpenPhyllotaxis(bullet, divergence));
    }

    public void LaunchBurst(Transform bullet, uint bulletQuantity)
    {
        StartCoroutine(Burst(bullet, bulletQuantity));
    }

    public void LaunchOpenBurst(Transform bullet, uint bulletQuantity, uint angle1 = 0, uint angle2 = 100)
    {
        StartCoroutine(OpenBurst(bullet, bulletQuantity, angle1, angle2));
    }

    public void LaunchStraightLine(Transform bullet, Transform player)
    {
        StartCoroutine(StraightLine(bullet, player, 5));
    }
    #endregion
}