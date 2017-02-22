using UnityEngine;
using System.Collections;

/// <summary>
/// LILITH'S AI FILE
/// Contains the Lilith AI using the Patterns file.
/// She phases and cancels bullets every 25%.
/// </summary>

/// <summary>
/// TODO
/// - stuffs
/// </summary>

public class LilithAI : BossManager
{
    #region Variables
    [SerializeField]
    private Transform bullet = null;

    [SerializeField]
    private float divergence = 137.5f; //Angular divergence
    [SerializeField]
    private float time = 15.0f;

    [SerializeField]
    private uint bulletQuantityBurst = 20; //Quantity of bullets to fire for each burst

    private Patterns Lilith; // Uppercase L on purpose

    public delegate void LilithEventsHandler();
    private event LilithEventsHandler LilithEvents;
    #endregion

    enum LifeState { LAST, ONE, TWO, THREE, FOUR };

    LifeState lifeState = LifeState.FOUR;

    void Start()
    {
        Life = 10000.0f;

        Lilith = GetComponentInParent<Patterns>();

        for (int i = 0; i < System.Enum.GetNames(typeof(LifeState)).Length; i++)
            LilithEvents += BulletCancel;
    }

    private void BulletCancel()
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

        if (Life / MaxLife >= 0.751f)
        {
            if (lifeState == LifeState.FOUR)
            {
                divergence = 111.5f;

                LilithEvents.Invoke();

                lifeState = LifeState.THREE;

                StartCoroutine(AI1());
            }
        }

        if (Life / MaxLife >= 0.501f && Life / MaxLife <= 0.750f)
        {
            if (lifeState == LifeState.THREE)
            {
                divergence = 178.5f;

                Lilith.StopAllCoroutines();
                StopAllCoroutines();

                LilithEvents.Invoke();

                lifeState = LifeState.TWO;

                StartCoroutine(AI2());
            }
        }

        if (Life / MaxLife >= 0.251f && Life / MaxLife <= 0.500f)
        {
            if (lifeState == LifeState.TWO)
            {
                divergence = 75.0f;

                Lilith.StopAllCoroutines();
                StopAllCoroutines();

                LilithEvents.Invoke();

                lifeState = LifeState.ONE;

                StartCoroutine(AI3());
            }
        }

        if (Life / MaxLife <= 0.250f)
        {

            if (lifeState == LifeState.ONE)
            {
                divergence = 137.5f;

                Lilith.StopAllCoroutines();
                StopAllCoroutines();

                LilithEvents.Invoke();

                lifeState = LifeState.LAST;

                StartCoroutine(AI4());
            }
        }
    }

    private IEnumerator AI1()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence);

        while (true)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 2);
        }
    }

    private IEnumerator AI2()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence);

        while (true)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 3);
        }
    }

    private IEnumerator AI3()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence);

        while (true)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 4);
        }
    }

    private IEnumerator AI4()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence);

        while (true)
        {
            Lilith.LaunchBurst(bullet, bulletQuantityBurst);
            yield return new WaitForSeconds(time / 6);
        }
    }
}