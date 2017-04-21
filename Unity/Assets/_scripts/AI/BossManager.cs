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
    protected GameManager gm = null;

    [SerializeField]
    private LifeManager lifeManager = null;

    static float maxLife;
    public static float MaxLife
    {
        get { return maxLife; }
    }

    static float life = 0;

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
        foreach (LifeManager manager in FindObjectsOfType<LifeManager>())
        {
            if (manager.lifeCharacter == LifeManager.LifeCharacter.Boss)
            {
                lifeManager = manager;
            }
        }
    }

    void Start()
    {
        int idPlayer = 0;

        foreach (GameObject go in GameObject.FindGameObjectsWithTag("Player"))
        {
            gm.Players[idPlayer] = go.transform.gameObject;
            idPlayer++;
        }

        maxLife = life;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "PlayerBullet")
        {
            GameManager.Instance.NbHit++;
            life--;
            
            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);
            gm.Players[0].GetComponent<Horsemen>().Stamina += 5;
            col.gameObject.SetActive(false);
            GameManager.Instance.LifeBoss = life;
        }
    }
}