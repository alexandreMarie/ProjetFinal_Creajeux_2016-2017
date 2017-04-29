using UnityEngine;
using System.Collections;

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
    protected enum LifeState { LAST, ONE, TWO, THREE, FOUR };

    private LifeManager lifeManager = null;

    [SerializeField]
    static protected Transform[] players = new Transform[2];

    protected GameManager gm = null;

    static float maxLife = 1000;
    public static float MaxLife
    {
        get { return maxLife; }
    }

    static float life = 1000;

    public float Life
    {
        get { return life; }

        set
        {
            life = value;
            GameManager.Instance.LifeBoss = life;
            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);
        }
    }

    void Awake()
    {
        gm = GameManager.Instance;

        foreach (LifeManager manager in FindObjectsOfType<LifeManager>())
            if (manager.lifeCharacter == LifeManager.LifeCharacter.Boss)
                lifeManager = manager;

    }

    void Start()
    {
        gm.NbHit = new int[gm.NbPlayers];
        life = 1000;

        maxLife = life;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "PlayerBullet")
        {

            gm.NbHit[col.GetComponent<PlayerBullet>().playerID]++;
            life -= col.GetComponent<PlayerBullet>().damage;

            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);

            gm.Players[col.GetComponent<PlayerBullet>().playerID].GetComponent<Horsemen>().Stamina++;

            //////////////////////////////////////////////////
            /////////   STOP LES VALEURS EN DUR !!  //////////
            //////////////////////////////////////////////////

            col.gameObject.SetActive(false);
            GameManager.Instance.LifeBoss = life;
        }
    }

    public IEnumerator DamageOverTime(int damage, float time, int count)
    {
        for (int i = 0; i < count; i++)
        {
            Life -= damage;
            yield return new WaitForSeconds(time);
        }
    }
}