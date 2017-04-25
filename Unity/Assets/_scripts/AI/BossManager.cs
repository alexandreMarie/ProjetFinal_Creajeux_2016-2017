using UnityEngine;

/// <summary>
/// BOSS MANAGER FILE
/// Contains all the common boss behaviors.
/// </summary>

/// <summary>
/// TO DO
/// - Add more common behaviors
/// </summary>

public class BossManager : MonoBehaviour
{
    [SerializeField]
    private LifeManager lifeManager = null;

    [SerializeField]
    static protected Transform[] players = new Transform[2];

    protected GameManager gm;

    static float maxLife;
    public static float MaxLife
    {
        get { return maxLife; }
    }

    static float life = 1000;

    public static float Life
    {
        get { return life; }

        set
        {
            life = value;
            GameManager.Instance.LifeBoss = life;
        }
    }

    void Awake()
    {
        gm = GameManager.Instance;

        foreach (LifeManager manager in FindObjectsOfType<LifeManager>())
            if (manager.lifeCharacter == LifeManager.LifeCharacter.Boss)
                lifeManager = manager;

        gm.NbHit = new int[gm.NbPlayers];
    }

    void Start()
    {
        life = 1000;

        maxLife = life;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "PlayerBullet")
        {
            //if (col.GetComponent<PlayerBullet>().playerID == 0)
            //    GameManager.Instance.NbHit[0]++;
            //else
            //    GameManager.Instance.NbHit[1]++;
            life--;

            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);

            gm.Players[col.GetComponent<PlayerBullet>().playerID].GetComponent<Horsemen>().Stamina += 1;

            //////////////////////////////////////////////////
            /////////   STOP LES VALEURS EN DUR !!  //////////
            //////////////////////////////////////////////////

            col.gameObject.SetActive(false);
            GameManager.Instance.LifeBoss = life;
        }
    }
}