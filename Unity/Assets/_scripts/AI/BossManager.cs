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
    private Transform[] players = null;

    static float maxLife;
    public static float MaxLife
    {
        get { return maxLife; }
    }

    [SerializeField]
    static float life = 0.0f;
    public static float Life
    {
        get { return life; }

        set
        {
            life = value;
            maxLife = value;
        }
    }


    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Bullet")
        {
            life--;

            lifeManager.UpdateLifeBar((int)MaxLife, (int)life);

            Destroy(col.gameObject);
        }
    }
}