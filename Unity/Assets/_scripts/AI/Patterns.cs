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
    private IEnumerator Phyllotaxis(Transform bullet, float divergence, bool rotatePattern)
    {
        float phi = 0.0f;
        uint floret = 0;
        Transform spawnedBullet = null;

        while (true)
        {
            phi = floret * divergence;

            spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0)) as Transform;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            floret++;

            yield return new WaitForSeconds(0.05f);
        }
    }

    private IEnumerator Burst(Transform bullet, uint bulletQuantity, uint bulletLineCount, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;
        Transform spawnedBullet = null;

        for (int i = 0; i < bulletLineCount; i++)
        {
            for (int j = 0; j < bulletQuantity; j++)
            {
                spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0)) as Transform;

                if (rotatePattern)
                    spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

                phi += additiveAngle;
            }
            yield return new WaitForSeconds(0.05f);
        }
        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator StraightLine(Transform bullet, Transform player, float bulletQuantity, bool rotatePattern)
    {
        Vector3 angle;
        Transform spawnedBullet = null;

        angle = player.position - transform.position;
        angle.y = 2.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            spawnedBullet = Instantiate(bullet, transform.position, Quaternion.LookRotation(angle, Vector3.forward)) as Transform;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            yield return new WaitForSeconds(0.1f);
        }
    }

    private IEnumerator RotatingStraightLine(Transform bullet, uint bulletQuantity, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;
        Transform spawnedBullet = null;

        for (int i = 0; i < bulletQuantity; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0)) as Transform;

                if (rotatePattern)
                    spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

                yield return new WaitForSeconds(0.1f);
            }

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator Malthael(Transform bullet, Transform player, bool rotatePattern)
    {
        Transform spawnedBullet = null;

        for (int phi = 20; phi < 160; phi += 5)
        {
            spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, transform.eulerAngles.y + phi, 0)) as Transform;
            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, transform.eulerAngles.y - phi, 0)) as Transform;
            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            yield return new WaitForSeconds(0.05f);
        }
    }

    private IEnumerator Wings(Transform bullet, bool rotatePattern)
    {
        Transform spawnedBullet = null;

        for (int phi = 20; phi < 160; phi += 5)
        {
            spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, transform.eulerAngles.y + phi, 0)) as Transform;
            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, transform.eulerAngles.y - phi, 0)) as Transform;
            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;
        }

        yield return new WaitForSeconds(0.05f);
    }
    #endregion

    #region Accessors
    public void LaunchPhyllotaxis(Transform bullet, float divergence, bool rotatePattern)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence, rotatePattern));
    }

    public void LaunchBurst(Transform bullet, uint bulletQuantity, uint bulletLineCount, bool rotatePattern)
    {
        StartCoroutine(Burst(bullet, bulletQuantity, bulletLineCount, rotatePattern));
    }

    public void LaunchStraightLine(Transform bullet, Transform player, bool rotatePattern)
    {
        StartCoroutine(StraightLine(bullet, player, 5, rotatePattern));
    }

    public void LaunchRotatingStraightLine(Transform bullet, uint bulletQuantity, bool rotatePattern)
    {
        StartCoroutine(RotatingStraightLine(bullet, bulletQuantity, rotatePattern));
    }

    public void LaunchMalthael(Transform bullet, bool rotatePattern)
    {
        StartCoroutine(Malthael(bullet, null, rotatePattern));
    }

    public void LaunchWings(Transform bullet, bool rotatePattern)
    {
        StartCoroutine(Wings(bullet, rotatePattern));
    }
    #endregion
}