using System.Collections;
using UnityEngine;


public class Patterns : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;

    private int bulletQuantityPhyllotaxis = 250; //Quantity of bullets to fire for the phyllotaxis
    private int bulletQuantityBurst = 50; //Quantity of bullets to fire for the bursts
    private float divergence = 137.5f; //Divergence angle
    private float bulletDelay = 0.005f; //Delay between bullets

    void Start()
    {
        StartCoroutine(StartPattern());
    }

    IEnumerator StartPattern()
    {
        StartCoroutine(Phyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));
        yield return new WaitForSeconds(2.0f);
        StartCoroutine(Burst (bullet, bulletQuantityBurst));
        yield return new WaitForSeconds(4.0f);
        StartCoroutine(OpenPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));
        yield return new WaitForSeconds(5.0f);
        StartCoroutine(OpenBurst(bullet, bulletQuantityBurst));
        yield return new WaitForSeconds(2.0f);
        StartCoroutine(FocusedPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis));
        yield return new WaitForSeconds(2.0f);
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

    private IEnumerator OpenBurst(Transform bullet, int bulletQuantity)
    {
        float additiveAngle = 360.0f / bulletQuantity;
        float phi = 0.0f;

        for (int i = 0; i < bulletQuantity; i++)
        {
            if ((phi % 360 < 100) || (phi % 360 > 170))
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            phi += additiveAngle;
        }

        yield return new WaitForSeconds(2.0f);
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
        for (int floret = 0; floret < bulletQuantity; floret++)
        {
            float phi = floret * divergence;
            if ((phi % 360 < 100) || (phi % 360 > 170))
                Instantiate(bullet, transform.position, Quaternion.Euler(0, phi, 0));

            yield return new WaitForSeconds(bulletDelay);
        }
    }
}