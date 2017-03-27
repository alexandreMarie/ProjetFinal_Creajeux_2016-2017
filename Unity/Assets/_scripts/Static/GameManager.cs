using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    private static GameManager instance = null;
    
    private bool dead;
    [SerializeField]
    private GameObject gameOver;

    [SerializeField]
    private int lifePlayer1 = 20;
    [SerializeField]
    private int lifePlayer2 = 20;
    [SerializeField]
    private float lifeBoss = 20;

    private GameObject boss;
    private GameObject player1;
    private GameObject player2;
    public static GameManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = new GameObject("GameManager").AddComponent<GameManager>();
                DontDestroyOnLoad(instance);
            }
            return instance;
        }
    }
   
    void Start()
    {
        try {
            gameOver = GameObject.FindGameObjectWithTag("GameOver");
            boss = GameObject.FindGameObjectWithTag("Boss");
            player1 = GameObject.FindGameObjectWithTag("Player");
        }
        catch
        {
            return;
        }
    }

    void Update()
    {
        //lifeBoss = BossManager.Life;
        if (lifePlayer1 <= 0)
        {
            CameraManager.Instance.DeadPlayer1 = true;
        }
        else if (lifePlayer2 <= 0)
        {
            CameraManager.Instance.DeadPlayer2 = true;
        }
        else if(lifeBoss <=0)
        {
            CameraManager.Instance.DeadBoss = true;
        }

        if (dead)
            {
            boss.GetComponent<LilithAI>().LilithAccessor.StopAllCoroutines();
            boss.GetComponent<LilithAI>().StopAllCoroutines();
            player1.GetComponent<Player>().enabled = false;
            player1.GetComponent<Add_Bullet>().enabled = false;
            gameOver.SetActive(true);
            }
            else
            {
                gameOver.SetActive(false);
            }
        
    }
    public bool Dead
    {
        get
        {
            return dead;
        }

        set
        {
            dead = value;
        }
    }

    public int LifePlayer1
    {
        get
        {
            return lifePlayer1;
        }

        set
        {
            lifePlayer1 = value;
        }
    }

    public int LifePlayer2
    {
        get
        {
            return lifePlayer2;
        }

        set
        {
            lifePlayer2 = value;
        }
    }

    public GameObject GameOver
    {
        get
        {
            return gameOver;
        }

        set
        {
            gameOver = value;
        }
    }

    public GameObject Boss
    {
        get
        {
            return boss;
        }

        set
        {
            boss = value;
        }
    }

    public GameObject Player1
    {
        get
        {
            return player1;
        }

        set
        {
            player1 = value;
        }
    }

    public float LifeBoss
    {
        get
        {
            return lifeBoss;
        }

        set
        {
            lifeBoss = value;
        }
    }
}
