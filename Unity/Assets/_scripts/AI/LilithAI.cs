using UnityEngine;
using System.Collections;

public class LilithAI : MonoBehaviour
{
    [SerializeField]
    private Transform bullet = null;

    [SerializeField]
    private float life = 100.0f;

    [SerializeField]
    private float divergence = 137.5f; //Angular divergence
    [SerializeField]
    private float time = 10.0f;
    [SerializeField]
    private uint bulletQuantityPhyllotaxis = 150; //Quantity of bullets to fire for the full phyllotaxis
    [SerializeField]
    private uint bulletQuantityBurst = 30; //Quantity of bullets to fire for each burst

    private bool continueRoutine = true;

    private Patterns Lilith; // Uppercase L on purpose

    public delegate void LilithEventsHandler();
    private event LilithEventsHandler LilithEvents;

    void Start()
    {
        Lilith = GetComponentInParent<Patterns>();

        LilithEvents += LilithAI_LilithEvents;
    }

    private void LilithAI_LilithEvents()
    {
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("EnnemyBullet"))
            Destroy(go);
    }

    void Update()
    {
        if (Input.GetButton("Fire1"))
            life -= 0.5f;

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
            //LilithEvents.Invoke();
            //LilithEvents -= LilithAI_LilithEvents;
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
                StartCoroutine(AI4(bulletQuantityPhyllotaxis));
            }
        }
    }

    private IEnumerator AI1(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQtyPhyl);

        for (int i = 0; i < 100; i++)
        {
            if (life < 75)
            {
                continueRoutine = true;
                yield break;
            }
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 2);
        }
        continueRoutine = true;
    }

    private IEnumerator AI2(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            if (life < 50)
            {
                continueRoutine = true;
                yield break;
            }
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 3);
        }
        continueRoutine = true;
    }

    private IEnumerator AI3(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            if (life < 25)
            {
                continueRoutine = true;
                yield break;
            }
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 4);
        }
        continueRoutine = true;
    }

    private IEnumerator AI4(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            if (life < 0)
            {
                yield break;
            }
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 6);
        }
        continueRoutine = true;
    }
}