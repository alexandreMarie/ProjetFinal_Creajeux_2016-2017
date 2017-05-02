using System.Collections;
using UnityEngine;

/// <summary>
/// LILITH'S AI FILE
/// Contains the Lilith AI using the Patterns file.
/// She phases and cancels bullets every 25%.
/// </summary>

/// <summary>
/// TODO
/// - Rework the eye pattern : one eye for each player? random but with colours?
/// </summary>

public class LilithAI : BossManager
{
    #region Variables
    [SerializeField]
    private GameObject bullet = null;
    [SerializeField]
    private Transform eyeBullet = null;
    [SerializeField]
    private Transform snake = null;
    [SerializeField]
    private Transform scavengingSnake = null;

    private GameObject arena = null;

    private Vector3 destination = default(Vector3);

    public LightsController arenaLights = null;

    private NavMeshAgent lilithMovement = null;
    private NavMeshPath path = null;

    private CameraShake cameraShake = null;

    private int targetPlayer = 0;
    private uint bulletQuantityBurst = 20; // Quantity of bullets to fire for each burst

    private float time = 15.0f;
    private float divergence = 137.5f; // Angular divergence of the phyllotaxis
    private const float powerEarthPowder = 150.0f;

    private bool specialState = false;
    private bool attacking = false;

    private Patterns Lilith = null; // Uppercase L on purpose

    public delegate void LilithEventsHandler();
    private event LilithEventsHandler LilithEvents = null;

    LifeState lifeState = LifeState.FOUR;

    public Patterns LilithAccessor
    {
        get
        { return Lilith; }
    }
    #endregion

    void Start()
    {
        Life = 4000;

        arenaLights.TurnLight = false;
        Lilith = GetComponentInParent<Patterns>();
        Lilith.InitPool(bullet);
        lilithMovement = GetComponent<NavMeshAgent>();

        path = new NavMeshPath();

        for (int i = 0; i < System.Enum.GetNames(typeof(LifeState)).Length; i++)
            LilithEvents += BulletCancel;

        arena = GameObject.FindGameObjectWithTag("Arena") as GameObject;
        cameraShake = Camera.main.transform.parent.GetComponent<CameraShake>();

        StartCoroutine(BossFocus());
    }

    void Update()
    {
        transform.LookAt(new Vector3(gm.Players[targetPlayer].transform.position.x, transform.position.y, gm.Players[targetPlayer].transform.position.z));
        if (CameraManager.Instance.Phase != CameraManager.TypePhase.Cinematique && CameraManager.Instance.Phase != CameraManager.TypePhase.Special)
        {


            destination.x = -gm.Players[targetPlayer].transform.position.x;
            destination.z = -gm.Players[targetPlayer].transform.position.z;

            NavMesh.CalculatePath(transform.position, destination, 0, path);

            if (!specialState)
                lilithMovement.SetDestination(destination);

            if (lifeState == LifeState.FOUR)
            {
                divergence = 111.5f;

                lifeState = LifeState.THREE;

                /////////////////////////TESTAI
                StartCoroutine(AI1());
                StartCoroutine(Snake());
            }

            if (Life / MaxLife >= 0.501f && Life / MaxLife <= 0.750f)
            {
                if (lifeState == LifeState.THREE)
                {
                    divergence = 178.5f;

                    Lilith.StopAllCoroutines();
                    StopAllCoroutines();
                    StopCoroutine(AI1());

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
                    StopCoroutine(AI2());

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
                    StopCoroutine(AI3());

                    LilithEvents.Invoke();

                    lifeState = LifeState.LAST;

                    StartCoroutine(AI4());
                    StartCoroutine(Snake());
                }
            }

            if (!attacking && !specialState)
            {
                int attack = Random.Range(1, 4);

                switch (attack)
                {
                    case 1:
                        StartCoroutine(EarthPowder());
                        break;
                    case 2:
                        StartCoroutine(EyeAttack());
                        break;
                    case 3:
                        StartCoroutine(ScavengingSnake());
                        break;
                    default:
                        break;
                }

                attacking = true;
            }
        }
    }

    private IEnumerator BossFocus()
    {
        while (true)
        {
            if (GameManager.Instance.NbPlayers > 1)
                targetPlayer = Random.Range(0, 2);

            yield return new WaitForSeconds(15.0f);
        }
    }

    private IEnumerator TestAI()
    {
        LilithAccessor.LaunchPhyllotaxis(bullet, divergence, false);
        yield return null;
    }

    private IEnumerator AI1()
    {
        LilithAccessor.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            if (Vector3.Distance(transform.position, gm.Players[0].transform.position) < 10.0f)
                LilithAccessor.LaunchBurst(bullet, bulletQuantityBurst, 10, false);
            else
                LilithAccessor.LaunchStraightLine(bullet, gm.Players[0].transform, false);

            yield return new WaitForSeconds(time / 2);
        }
    }

    private IEnumerator AI2()
    {
        LilithAccessor.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            LilithAccessor.LaunchBurst(bullet, 25, 5, false);
            yield return new WaitForSeconds(time / 3);
        }
    }

    private IEnumerator AI3()
    {
        LilithAccessor.LaunchPhyllotaxis(bullet, divergence, false);

        while (true)
        {
            LilithAccessor.LaunchWings(bullet, false);
            yield return new WaitForSeconds(time / 4);
        }
    }

    private IEnumerator AI4()
    {
        LilithAccessor.LaunchPhyllotaxis(bullet, divergence, false);

        int i = 0;

        while (true)
        {
            i++;
            LilithAccessor.LaunchRotatingStraightLine(bullet, bulletQuantityBurst, false);
            yield return new WaitForSeconds(time / 4);
        }
    }

    private IEnumerator Snake()
    {
        Vector3 angle;

        while (true)
        {
            arenaLights.TurnLight = true;

            arena.GetComponent<EmissiveController>().TurnEmissive = false;
            Camera.main.GetComponent<BloomController>().TurnBloom = true;
            //SoundsManager.Instance.VolumeAmbientMusic = 0.75f;

            angle = gm.Players[0].transform.position - transform.position;
            angle.y = 0.5f;

            yield return new WaitForSeconds(1.0f);

            Instantiate(snake, transform.position, Quaternion.LookRotation(angle, Vector3.forward));

            yield return new WaitForSeconds(4.0f);

            arenaLights.TurnLight = false;
            arena.GetComponent<EmissiveController>().TurnEmissive = true;
            Camera.main.GetComponent<BloomController>().TurnBloom = false;
            //SoundsManager.Instance.VolumeAmbientMusic = 1.0f;

            yield return new WaitForSeconds(5.0f);
        }
    }

    private IEnumerator ScavengingSnake()
    {
        specialState = true;

        lilithMovement.SetDestination(default(Vector3));

        arenaLights.TurnLight = true;

        do
        { yield return new WaitForSeconds(2.0f); }
        while (lilithMovement.remainingDistance > 0.2f);

        Vector3 scavengePosition = new Vector3(-30, 1.0f, gm.Players[targetPlayer].transform.position.z);

        Transform _scavengingSnake = Instantiate(scavengingSnake, scavengePosition, Quaternion.identity) as Transform;
        _scavengingSnake.Rotate(new Vector3(0, 90.0f, 0));

        yield return new WaitForSeconds(2.0f);

        specialState = false;
        arenaLights.TurnLight = false;

        yield return new WaitForSeconds(5.0f);

        attacking = false;

        yield return null;
    }

    private IEnumerator EarthPowder()
    {
        cameraShake.shakeDuration = 3.0f;

        yield return new WaitForSeconds(3.0f);
        int target = 0;
        if (GameManager.Instance.NbPlayers > 1)
            target = Random.Range(0, 2);

        Vector3 hitPosition = gm.Players[target].transform.position;

        yield return new WaitForSeconds(1.0f);

        if (Vector3.Distance(hitPosition, gm.Players[target].transform.position) < 5)
            gm.Players[target].GetComponent<Rigidbody>().AddForce(new Vector3(0.0f, powerEarthPowder, 0.0f), ForceMode.Impulse);

        yield return new WaitForSeconds(5.0f);

        attacking = false;

        yield return null;
    }

    private IEnumerator EyeAttack()
    {
        specialState = true;

        lilithMovement.SetDestination(new Vector3(0.0f, 0.0f, -6.5f));

        do
        { yield return new WaitForSeconds(2.0f); }
        while (lilithMovement.remainingDistance > 0.2f);

        for (int i = 0; i < 50; i++)
        {
            Instantiate(eyeBullet);
            yield return new WaitForSeconds(0.02f);
        }

        specialState = false;

        yield return new WaitForSeconds(5.0f);

        attacking = false;

        yield return null;
    }

    private void BulletCancel()
    {
        foreach (GameObject go in GameObject.FindGameObjectsWithTag("EnnemyBullet"))
            go.SetActive(false);
    }

    void OnTriggerEnter(Collider col)
    {
        return;
    }
}