using System.Collections;
using UnityEngine;

/// <summary>
/// PATTERNS FILE
/// Contains all the pattern algorithms.
/// Contains the following patterns :
/// - Phyllotaxis
/// - Burst
/// - RotatingStraightLine
/// - StraightLine
/// - Malthael
/// - Wings
/// </summary>

/// <summary>
/// TO DO
/// - Add patterns
/// - Add the rotating burst again?
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

    private IEnumerator Burst(Transform bullet, uint bulletQuantity, uint bulletLineCount, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletLineCount; i++)
        {
            for (int j = 0; j < bulletQuantity; j++)
            {
                Transform spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0)) as Transform;

                if (rotatePattern)
                    spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

                phi += additiveAngle;
            }
            yield return new WaitForSeconds(0.05f);
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
                 
    private IEnumerator RotatingStraightLine(Transform bullet, uint bulletQuantity, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
                yield return new WaitForSeconds(0.1f);
            }

            if (rotatePattern)
                bullet.GetComponent<Bullet>().RotateBullet = true;

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator Malthael(Transform bullet, Transform player)
    {
        for (int phi = 20; phi < 160; phi += 5)
        {
            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
            Instantiate(bullet, transform.position, Quaternion.Euler(0, -phi, 0));
            yield return new WaitForSeconds(0.05f);
        }
    }

    private IEnumerator Wings(Transform bullet, Transform player)
    {
        for (int phi = 20; phi < 160; phi += 5)
        {
            Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));
            Instantiate(bullet, transform.position, Quaternion.Euler(0, -phi, 0));
        }

        yield return new WaitForSeconds(0.05f);
    }
    #endregion

    #region Accessors
    public void LaunchPhyllotaxis(Transform bullet, float divergence)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence));
    }

    public void LaunchBurst(Transform bullet, uint bulletQuantity, uint bulletLineCount, bool test)
    {
        StartCoroutine(Burst(bullet, bulletQuantity, bulletLineCount, test));
    }

    public void LaunchStraightLine(Transform bullet, Transform player)
    {
        StartCoroutine(StraightLine(bullet, player, 5));
    }

    public void LaunchRotatingStraightLine(Transform bullet, uint bulletQuantity, bool rotatePattern)
    {
        StartCoroutine(RotatingStraightLine(bullet, bulletQuantity, rotatePattern));
    }

    public void LaunchMalthael(Transform bullet)
    {
        StartCoroutine(Malthael(bullet, null));
    }
    #endregion
}