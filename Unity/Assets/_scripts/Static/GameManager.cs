using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

    All_player_selected Scri_APS;//Source
    Character_Selection.Stats_Character [] str_State_Char;

    private static GameManager instance = null;

    int ID_arena;

    private bool dead;
    [SerializeField]
    private GameObject gameOver;

    [SerializeField]
    private int lifePlayer1 = 20;
    [SerializeField]
    private int lifePlayer2 = 20;
    [SerializeField]
    private float lifeBoss;

    private GameObject boss;
    private GameObject[] players;

    private Player Temps_Player;
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
            str_State_Char = new Character_Selection.Stats_Character[2];
            gameOver = GameObject.FindGameObjectWithTag("GameOver");
            boss = GameObject.FindGameObjectWithTag("Boss");
            players = GameObject.FindGameObjectsWithTag("Player");
        }
        catch
        {
            return;
        }
    }

    void Update()
    {
        lifeBoss = BossManager.Life;
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
            players[0].GetComponent<Player>().enabled = false;
            players[0].GetComponent<Add_Bullet>().enabled = false;
            players[1].GetComponent<Player>().enabled = false;
            players[1].GetComponent<Add_Bullet>().enabled = false;
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

    public GameObject[] Players
    {
        get
        {
            return players;
        }

        set
        { 
            players = value;
        }
    }

    public void Set_State(int ID,Character_Selection.Stats_Character State_Char)
    {
        str_State_Char[ID] = State_Char;
    }

    public void Set_ID_Arena(int i)
    {
        ID_arena = i;
        Debug.Log(ID_arena);
    }
}
