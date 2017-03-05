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
    private LifeManager lifeManager;

    [SerializeField]
    static protected Transform[] players = new Transform[2];

    static float maxLife;
    public static float MaxLife
    {
        get { return maxLife; }
    }

    [SerializeField]
    static float life = 0.0f;

    static float stamina;
    public static float Life
    {
        get { return life; }

        set
        {
            life = value;
            maxLife = value;
            stamina = value;
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
            //stamina ++;
            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);
            //lifeManager.UpdateStaminaBar(20, (int)stamina);
            players[0].GetComponent<Player>().Add_Stamina(1);
            Destroy(col.gameObject);
        }
    }
}