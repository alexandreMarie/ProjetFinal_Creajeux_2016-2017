using UnityEngine;
using System.Collections;

public class LilithAI : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;

    [SerializeField]
    private float life = 100.0f;
    [SerializeField]
    private uint bulletQuantityPhyllotaxis = 150; //Quantity of bullets to fire for the phyllotaxis
    [SerializeField]
    private uint bulletQuantityBurst = 30; //Quantity of bullets to fire for the bursts

    [SerializeField]
    private float divergence = 137.5f; //Divergence angle
    [SerializeField]
    private float time = 5.0f;

    private float dTime = 0.0f;
    bool continueRoutine = true;

    private Patterns Lilith; // Uppercase L on purpose

    void Start()
    {
        Lilith = GetComponentInParent<Patterns>();
    }

    void Update()
    {
        if (life >= 75.1f)
        {
            divergence = 111.0f;
            bulletQuantityPhyllotaxis = 150;

            if (continueRoutine)
            {
                continueRoutine = false;
                StartCoroutine(AI1(bulletQuantityPhyllotaxis));
            }
        }

        if (life >= 50.1f && life <= 75.0f)
        {
            divergence = 100.0f;

            if (continueRoutine)
            {
                continueRoutine = false;
                StartCoroutine(AI2(bulletQuantityPhyllotaxis));
            }
        }

        if (life >= 25.1f && life <= 50.0f)
        {
            divergence = 75.0f;

            if (continueRoutine)
            {
                continueRoutine = false;
                StartCoroutine(AI3(bulletQuantityPhyllotaxis));
            }
        }

        if (life <= 25.0f)
        {
            divergence = 178.5f;

            if (continueRoutine)
            {
                continueRoutine = false;
                Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis, time, continueRoutine);
            }
        }

        dTime += Time.deltaTime;

        if (dTime >= time)
        {
            dTime = 0.0f;
            continueRoutine = true;
        }
    }

    private IEnumerator AI1(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQtyPhyl, time, continueRoutine);
        yield return new WaitForSeconds(time);

        Lilith.LaunchBurst(bullet, bulletQuantityBurst);
        yield return new WaitForSeconds(time / 2);
    }

    private IEnumerator AI2(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis, time, continueRoutine);
        yield return new WaitForSeconds(time / 2);

        Lilith.LaunchBurst(bullet, bulletQuantityBurst);
        yield return new WaitForSeconds(time / 3);
    }

    private IEnumerator AI3(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis, time, continueRoutine);
        yield return new WaitForSeconds(time / 3);

        Lilith.LaunchBurst(bullet, bulletQuantityBurst);
        yield return new WaitForSeconds(time / 4);
    }

    private IEnumerator AI4(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis, time, continueRoutine);
        yield return new WaitForSeconds(time / 4);

        Lilith.LaunchBurst(bullet, bulletQuantityBurst);
        yield return new WaitForSeconds(time / 6);
    }
}