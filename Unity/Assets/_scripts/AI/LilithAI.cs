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
    private Transform snake = null;

    [SerializeField]
    private float time = 15.0f;

    [SerializeField]
    private uint bulletQuantityBurst = 200; //Quantity of bullets to fire for each burst

    private Vector3 destination;

    private float divergence = 137.5f; //Angular divergence of the phyllotaxis

    public LightsController lilithLights;

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

        destination.y = transform.position.y;
    }

    private void BulletCancel()
    {
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("EnnemyBullet"))
            Destroy(go);
    }

    void Update()
    {
        transform.LookAt(new Vector3(players[0].transform.position.x, transform.position.y, players[0].transform.position.z));
        destination.x = -players[0].transform.position.x;
        destination.z = -players[0].transform.position.z;

        transform.position = destination;

        if (Life / MaxLife >= 0.751f)
        {
            if (lifeState == LifeState.FOUR)
            {
                divergence = 111.5f;

                LilithEvents.Invoke();

                lifeState = LifeState.THREE;

                StartCoroutine(AI1());//////////////////////////////////////////////TESTAI
                StartCoroutine(Snake());
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
                StartCoroutine(Snake());
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
                StartCoroutine(Snake());
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
                StartCoroutine(Snake());
            }
        }
    }

    private IEnumerator TestAI()
    {
        //Lilith.LaunchBurst(bullet, bulletQuantityBurst, 5, false);

        while (true)
        {
            Lilith.LaunchMalthael(bullet, false);
            yield return new WaitForSeconds(2.0f);
        }
        //Lilith.LaunchMalthael(bullet);

        //yield return new WaitForSeconds(5.0f);
    }

    private IEnumerator AI1()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            if (Vector3.Distance(transform.position, players[0].transform.position) < 10.0f)
                Lilith.LaunchBurst(bullet, bulletQuantityBurst, 10, false);
            else
                Lilith.LaunchStraightLine(bullet, players[0], false);

            yield return new WaitForSeconds(time / 2);
        }
    }

    private IEnumerator AI2()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            Lilith.LaunchBurst(bullet, 25, 5, false);
            yield return new WaitForSeconds(time / 3);
        }
    }

    private IEnumerator AI3()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            Lilith.LaunchWings(bullet, false);
            yield return new WaitForSeconds(time / 4);
        }
    }

    private IEnumerator AI4()
    {
        Lilith.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            Lilith.LaunchRotatingStraightLine(bullet, bulletQuantityBurst, true);
            yield return new WaitForSeconds(time / 6);
        }
    }

    private IEnumerator Snake() // SNEK
    {
        Vector3 angle;

        while (true)
        {
            lilithLights.TurnLight = false;
            //SoundsManager.Instance.VolumeAmbientMusic = 0.75f;

            angle = players[0].position - transform.position;
            angle.y = 2.0f;

            yield return new WaitForSeconds(2.0f);

            Instantiate(snake, transform.position, Quaternion.LookRotation(angle, Vector3.forward));

            yield return new WaitForSeconds(4.0f);

            lilithLights.TurnLight = true;
            //SoundsManager.Instance.VolumeAmbientMusic = 1.0f;

            yield return new WaitForSeconds(5.0f);
        }
    }
}