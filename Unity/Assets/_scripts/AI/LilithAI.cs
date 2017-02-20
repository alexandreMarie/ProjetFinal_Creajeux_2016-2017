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
    private uint bulletQuantityPhyllotaxis = 1000; //Quantity of bullets to fire for the full phyllotaxis
    [SerializeField]
    private uint bulletQuantityBurst = 30; //Quantity of bullets to fire for each burst

    private bool continueRoutine = true;

    private Patterns Lilith; // Uppercase L on purpose

    public delegate void LilithEventsHandler();
    private event LilithEventsHandler LilithEvents;

    void Start()
    {
        Hit_Boss.LifeBar = life;

        Lilith = GetComponentInParent<Patterns>();

        for (int i = 0; i < System.Enum.GetNames(typeof(LifeState)).Length; i++)
        {
            LilithEvents += LilithAI_LilithEvents;
        }
    }

    enum LifeState { LAST, ONE, TWO, THREE, FOUR };
    LifeState lifeState = LifeState.FOUR;


    private void LilithAI_LilithEvents()
    {
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("EnnemyBullet"))
            Destroy(go);
    }

    void Update()
    {
        if (Input.GetButton("Fire1"))
        {
            Hit_Boss hb;
        }

        if (Input.GetButton("Jump"))
        {
            Lilith.StopAllCoroutines();
            Debug.Log("Stop");
        }

        if (Hit_Boss.LifeBar >= 75.1f)
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

        if (Hit_Boss.LifeBar >= 50.1f && Hit_Boss.LifeBar <= 75.0f)
        {
            if (lifeState == LifeState.THREE)
            {
                LilithEvents.Invoke();
                lifeState = LifeState.TWO;
                LilithEvents += LilithAI_LilithEvents;
            }

            divergence = 100.0f;

            if (continueRoutine)
            {
                continueRoutine = false;
                StartCoroutine(AI2(bulletQuantityPhyllotaxis));
            }
        }

        if (Hit_Boss.LifeBar >= 25.1f && Hit_Boss.LifeBar <= 50.0f)
        {
            if (lifeState == LifeState.TWO)
            {
                LilithEvents.Invoke();
                lifeState = LifeState.ONE;
            }

            divergence = 75.0f;

            if (continueRoutine)
            {
                continueRoutine = false;
                StartCoroutine(AI3(bulletQuantityPhyllotaxis));
            }
        }

        if (Hit_Boss.LifeBar <= 25.0f)
        {

            if (lifeState == LifeState.ONE)
            {
                LilithEvents.Invoke();
                lifeState = LifeState.LAST;
            }

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
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 2);
        }
    }

    private IEnumerator AI2(uint bulletQtyPhyl)
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, bulletQuantityPhyllotaxis);

        for (int i = 0; i < 100; i++)
        {
            if (life < 50)
                StopCoroutine(AI2(bulletQuantityPhyllotaxis));

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
                StopCoroutine(AI3(bulletQuantityPhyllotaxis));

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