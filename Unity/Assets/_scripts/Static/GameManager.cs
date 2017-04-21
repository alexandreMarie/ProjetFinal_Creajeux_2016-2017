using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    private static GameManager instance = null;

    /* Player with his character */
    private Character_Selection.Stats_Character [] struc_stat_character;


    private bool dead;

    /* 0 = solo/standard; 1 = duo/standard; 2 = duo/Hardcore; 3 = ...*/
    private Mode typeMode;
    public enum Mode { standardS , standardD, hardcoreD};

    int id_Arena;
    int load_Mode;

    private int nbPlayers;
    [SerializeField]
    private GameObject gameOver;

    private int lifeMax;
    [SerializeField]
    private int lifePlayer1;
    [SerializeField]
    private int lifePlayer2;
    [SerializeField]
    private float lifeBoss;

    [SerializeField]
    private int nbHit;
    [SerializeField]
    private int nbShoot;
    private int damageByBoss = 40;

    private GameObject boss;
    [SerializeField]
    private GameObject[] players;

    private List<int> score = new List<int>();

    private Texture2D texScreen;

    private Vector3[] startPos;
    public Vector3[] StartPos
    {
        get
        {
            return startPos;
        }

        set
        {
            startPos = value;
        }
    }


    [SerializeField]
    private float timer;
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
    
    public void UpdateLife( int playerId, int life)
    {
        if (playerId == 0)
            lifePlayer1 = life;
        else if (playerId == 1)
            lifePlayer2 = life;
    }
    public void SaveData(int scoreAdd)
    {
        GetData();
        DeleteData();
        score.Add(scoreAdd);
        PlayerPrefs.SetInt("Scores_Count", score.Count);
        for (int i = 0; i < score.Count; i++)
            PlayerPrefs.SetInt("Scores" + i, score[i]);
        score.Clear();
    }

    public void DeleteData()
    {
        PlayerPrefs.DeleteAll();
    }

    public void GetData()
    {
        int countScores = PlayerPrefs.GetInt("Scores_Count");
        if (countScores != 0)
        {
            //score = new List<int>();
            for (int i = 0; i < countScores; i++)
                score.Add(PlayerPrefs.GetInt("Scores" + i));
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

    public float Timer
    {
        get
        {
            return timer;
        }

        set
        {
            timer = value;
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

  
    public int NbHit
    {
        get
        {
            return nbHit;
        }

        set
        {
            nbHit = value;
        }
    }

    public int NbShoot
    {
        get
        {
            return nbShoot;
        }

        set
        {
            nbShoot = value;
        }
    }

    public int DamageByBoss
    {
        get
        {
            return damageByBoss;
        }

        set
        {
            damageByBoss = value;
        }
    }

    public int NbPlayers
    {
        get
        {
            return nbPlayers;
        }

        set
        {
            nbPlayers = value;
        }
    }

    public Character_Selection.Stats_Character[] Struc_stat_character
    {
        get
        {
            return struc_stat_character;
        }

        set
        {
            struc_stat_character = value;
        }
    }

    public int LifeMax
    {
        get
        {
            return lifeMax;
        }

        set
        {
            lifeMax = value;
        }
    }

    public Mode TypeMode
    {
        get
        {
            return typeMode;
        }

        set
        {
            typeMode = value;
        }
    }

    public void CreateStrucCharact(int Number_of_controller)
    {
        //Mode Standard
        typeMode = (Mode)Number_of_controller - 1;
        struc_stat_character = new Character_Selection.Stats_Character[Number_of_controller];
        nbPlayers = Number_of_controller;
    }
    /* i = 0 = First Player; i = 1 = Second Player; */
    public void Set_Stat_Player(Character_Selection.Stats_Character State,int i)
      {
        struc_stat_character[i] = State;
      }

    public void Set_arena(int Arena)
    {

    }
}