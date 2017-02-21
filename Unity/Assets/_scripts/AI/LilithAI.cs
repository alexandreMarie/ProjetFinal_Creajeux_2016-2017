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
    private float time = 15.0f;

    [SerializeField]
    private uint bulletQuantityPhyllotaxis = 10000; //Quantity of bullets to fire for the full phyllotaxis
    [SerializeField]
    private uint bulletQuantityBurst = 20; //Quantity of bullets to fire for each burst

    private Patterns Lilith; // Uppercase L on purpose

    public delegate void LilithEventsHandler();
    private event LilithEventsHandler LilithEvents;

    enum LifeState { LAST, ONE, TWO, THREE, FOUR };

    LifeState lifeState = LifeState.FOUR;

    void Start()
    {
        Hit_Boss.LifeBar = life;

        Lilith = GetComponentInParent<Patterns>();

        for (int i = 0; i < System.Enum.GetNames(typeof(LifeState)).Length; i++)
            LilithEvents += LilithAI_LilithEvents;
    }

    private void LilithAI_LilithEvents()
    {
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("EnnemyBullet"))
            Destroy(go);
    }

    void Update()
    {
        if (Input.GetButton("Jump"))
        {
            Lilith.StopAllCoroutines();
            Debug.Log("Stop");
        }

        Debug.Log(Hit_Boss.LifeBar / life);

        if (Hit_Boss.LifeBar / life >= 0.751f)
        {
            if (lifeState == LifeState.FOUR)
            {
                divergence = 111.5f;

                LilithEvents.Invoke();
                lifeState = LifeState.THREE;
                LilithEvents += LilithAI_LilithEvents;

                StartCoroutine(AI1(bulletQuantityPhyllotaxis));
            }
        }

        if (Hit_Boss.LifeBar / life >= 0.501f && Hit_Boss.LifeBar / life <= 0.750f)
        {
            if (lifeState == LifeState.THREE)
            {
                divergence = 178.5f;

                Lilith.StopAllCoroutines();
                LilithEvents.Invoke();
                lifeState = LifeState.TWO;
                LilithEvents += LilithAI_LilithEvents;

                StartCoroutine(AI2(bulletQuantityPhyllotaxis));
            }
        }

        if (Hit_Boss.LifeBar / life >= 0.251f && Hit_Boss.LifeBar / life <= 0.500f)
        {
            if (lifeState == LifeState.TWO)
            {
                divergence = 75.0f;

                Lilith.StopAllCoroutines();
                LilithEvents.Invoke();
                lifeState = LifeState.ONE;
                LilithEvents += LilithAI_LilithEvents;

                StartCoroutine(AI3(bulletQuantityPhyllotaxis));
            }
        }

        if (Hit_Boss.LifeBar / life <= 0.250f)
        {

            if (lifeState == LifeState.ONE)
            {
                divergence = 137.5f;

                Lilith.StopAllCoroutines();
                LilithEvents.Invoke();
                lifeState = LifeState.LAST;
                LilithEvents += LilithAI_LilithEvents;

                StartCoroutine(AI4(bulletQuantityPhyllotaxis));
            }
        }
    }

    private IEnumerator AI1(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQtyPhyl);

        for (int i = 0; i < 100; i++)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 2);
        }
    }

    private IEnumerator AI2(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 3);
        }
    }

    private IEnumerator AI3(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 4);
        }
    }

    private IEnumerator AI4(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 6);
        }
    }
}