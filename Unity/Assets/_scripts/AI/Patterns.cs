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
/// - Add patterns
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

    private IEnumerator Burst(Transform bullet, uint bulletQuantity, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
            
            if (rotatePattern)
            {
                bullet.GetComponent<Bullet>().RotateBullet = true;
                Debug.Log(bullet.GetComponent<Bullet>().RotateBullet);
            }

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
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
    }

    private IEnumerator Malthael(Transform bullet, Transform player)
    {
        float phi = 20.0f;
        while (true)
        {
            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
            Instantiate(bullet, transform.position, Quaternion.Euler(0, -phi, 0));

            phi += 5.0f;

            if (phi > 160)
                phi = 20.0f;

            yield return new WaitForSeconds(0.05f);
        }
    }
    #endregion

    #region Accessors
    public void LaunchPhyllotaxis(Transform bullet, float divergence)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence));
    }

    public void LaunchBurst(Transform bullet, uint bulletQuantity, bool test)
    {
        StartCoroutine(Burst(bullet, bulletQuantity, test));
    }

    public void LaunchStraightLine(Transform bullet, Transform player)
    {
        StartCoroutine(StraightLine(bullet, player, 5));
    }

    public void LaunchMalthael(Transform bullet)
    {
        StartCoroutine(Malthael(bullet, null));
    }
    #endregion
}