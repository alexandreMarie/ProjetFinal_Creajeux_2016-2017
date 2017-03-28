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

    static int maxLife;
    public static int MaxLife
    {
        get { return maxLife; }
    }

    [SerializeField]
    static int life = 0;
    public static int Life
    {
        get { return life; }

        set
        {
            life = value;
            maxLife = value;
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
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Bullet")
        {
            life--;
            lifeManager.UpdateLifeBar(MaxLife, life);
            players[0].GetComponent<Player>().Add_Stamina(5);
            Destroy(col.gameObject);
        }
    }
}