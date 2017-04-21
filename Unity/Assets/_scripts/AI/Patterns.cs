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
    private Pool pool;

    public void InitPool(GameObject bullet)
    {
        GameObject go = new GameObject("BulletPoolLilith", typeof(Pool));
        pool = go.GetComponent<Pool>();
        pool.Init(bullet, 100);
    }

    #region Patterns Coroutines
    private IEnumerator Phyllotaxis(GameObject bullet, float divergence, bool rotatePattern)
    {
        float phi = 0.0f;
        uint floret = 0;
        //Transform spawnedBullet = null;

        while (true)
        {
            phi = floret * divergence;

            GameObject spawnedBullet = pool.Get();

            spawnedBullet.transform.rotation = Quaternion.Euler(0, phi, 0);
            spawnedBullet.transform.position = transform.position;

            //spawnedBullet = Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0)) as Transform;
            
            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            floret++;

            yield return new WaitForSeconds(0.05f);
        }
    }

    private IEnumerator Burst(GameObject bullet, uint bulletQuantity, uint bulletLineCount, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletLineCount; i++)
        {
            for (int j = 0; j < bulletQuantity; j++)
            {
                GameObject spawnedBullet = pool.Get();

                spawnedBullet.transform.rotation = Quaternion.Euler(0, phi, 0);
                spawnedBullet.transform.position = transform.position;

                if (rotatePattern)
                    spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

                phi += additiveAngle;
            }
            yield return new WaitForSeconds(0.05f);
        }
        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator StraightLine(GameObject bullet, Transform player, float bulletQuantity, bool rotatePattern)
    {
        Vector3 angle;

        angle = player.position - transform.position;
        angle.y = 1.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            GameObject spawnedBullet = pool.Get();

            spawnedBullet.transform.rotation = Quaternion.LookRotation(angle, Vector3.forward);
            spawnedBullet.transform.position = transform.position;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            yield return new WaitForSeconds(0.1f);
        }
    }

    private IEnumerator RotatingStraightLine(GameObject bullet, uint bulletQuantity, bool rotatePattern)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                GameObject spawnedBullet = pool.Get();

                spawnedBullet.transform.rotation = Quaternion.Euler(0, phi, 0);
                spawnedBullet.transform.position = transform.position;

                if (rotatePattern)
                    spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

                yield return new WaitForSeconds(0.1f);
            }

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
    }

    private IEnumerator Malthael(GameObject bullet, Transform player, bool rotatePattern)
    {
        for (int phi = 20; phi < 160; phi += 5)
        {
            GameObject spawnedBullet = pool.Get();

            spawnedBullet.transform.rotation = Quaternion.Euler(0, transform.eulerAngles.y + phi, 0);
            spawnedBullet.transform.position = transform.position;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            spawnedBullet = pool.Get();

            spawnedBullet.transform.rotation = Quaternion.Euler(0, transform.eulerAngles.y - phi, 0);
            spawnedBullet.transform.position = transform.position;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            yield return new WaitForSeconds(0.05f);
        }
    }

    private IEnumerator Wings(GameObject bullet, bool rotatePattern)
    {
        for (int phi = 20; phi < 160; phi += 5)
        {
            GameObject spawnedBullet = pool.Get();

            spawnedBullet.transform.rotation = Quaternion.Euler(0, transform.eulerAngles.y + phi, 0);
            spawnedBullet.transform.position = transform.position;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;

            spawnedBullet = pool.Get();

            spawnedBullet.transform.rotation = Quaternion.Euler(0, transform.eulerAngles.y - phi, 0);
            spawnedBullet.transform.position = transform.position;

            if (rotatePattern)
                spawnedBullet.GetComponent<Bullet>().RotateBullet = true;
        }

        yield return new WaitForSeconds(0.05f);
    }
    #endregion

    #region Accessors
    public void LaunchPhyllotaxis(GameObject bullet, float divergence, bool rotatePattern)
    {
        StartCoroutine(Phyllotaxis(bullet, divergence, rotatePattern));
    }

    public void LaunchBurst(GameObject bullet, uint bulletQuantity, uint bulletLineCount, bool rotatePattern)
    {
        StartCoroutine(Burst(bullet, bulletQuantity, bulletLineCount, rotatePattern));
    }

    public void LaunchStraightLine(GameObject bullet, Transform player, bool rotatePattern)
    {
        StartCoroutine(StraightLine(bullet, player, 5, rotatePattern));
    }

    public void LaunchRotatingStraightLine(GameObject bullet, uint bulletQuantity, bool rotatePattern)
    {
        StartCoroutine(RotatingStraightLine(bullet, bulletQuantity, rotatePattern));
    }

    public void LaunchMalthael(GameObject bullet, bool rotatePattern)
    {
        StartCoroutine(Malthael(bullet, null, rotatePattern));
    }

    public void LaunchWings(GameObject bullet, bool rotatePattern)
    {
        StartCoroutine(Wings(bullet, rotatePattern));
    }
    #endregion
}