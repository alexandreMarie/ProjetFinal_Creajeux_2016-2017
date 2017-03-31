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
        }
    }

    void Start()
    {
        int idPlayer = 0;

        foreach (GameObject go in GameObject.FindGameObjectsWithTag("Player"))
        {
            players[idPlayer] = go.transform;
            idPlayer++;
        }

        maxLife = life;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Bullet")
        {
            GameManager.Instance.HitByPlayers++;
            life--;
            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);
            players[0].GetComponent<Horsemen>().Stamina += 5;
            col.gameObject.SetActive(false);
        }
    }
}