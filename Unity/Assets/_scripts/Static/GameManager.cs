using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{

 


    private static GameManager instance = null;
    private Character_Selection.Stats_Character [] struc_stat_character;
    private bool dead;

    int id_Arena;
    int load_Mode;


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

    private List<int> score;

    private Texture2D texScreen;

    private float compteur;
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
        try
        {
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
        else if (lifeBoss <= 0)
        {
            CameraManager.Instance.DeadBoss = true;
        }

        if (dead)
        {
            // boss.GetComponent<LilithAI>().LilithAccessor.StopAllCoroutines();
            //boss.GetComponent<LilithAI>().StopAllCoroutines();
            players[0].GetComponent<Horsemen>().enabled = false;
            //players[1].GetComponent<Player>().enabled = false;
            //players[1].GetComponent<Add_Bullet>().enabled = false;
            //gameOver.SetActive(true);
        }
        else
        {
            // gameOver.SetActive(false);
        }
    }
    public void SaveData()
    {
        PlayerPrefs.SetInt("Scores_Count", score.Count);
        for (int i = 0; i < score.Count; i++)
            PlayerPrefs.SetInt("Scores" + i, score[i]);

    }

    public void DeleteData()
    {
        PlayerPrefs.DeleteAll();
    }

    public void GetData()
    {
        int countScores = PlayerPrefs.GetInt("Scores_Count");
        for (int i = 0; i < countScores; i++)
            score.Add(PlayerPrefs.GetInt("Scores" + i));
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

    public List<int> Score
    {
        get
        {
            return score;
        }

        set
        {
            score = value;
        }
    }

    public Texture2D TexScreen
    {
        get
        {
            return texScreen;
        }

        set
        {
            texScreen = value;
        }
    }

    public float Compteur
    {
        get
        {
            return compteur;
        }

        set
        {
            compteur = value;
        }
    }

    public int ID_arena
    {
        get
        {
            return id_Arena;
        }

        set
        {
            id_Arena = value;
        }
    }

    public int Load_mode
    {
        get
        {
            return load_Mode;
        }

        set
        {
            load_Mode = value;
        }
    }

    public void Set_Stat_Player(Character_Selection.Stats_Character State,int i,int Number_of_controller)
      {
        struc_stat_character = new Character_Selection.Stats_Character[Number_of_controller];
        struc_stat_character[i] = State;
      }

    public void Set_arena(int Arena)
    {

    }
}