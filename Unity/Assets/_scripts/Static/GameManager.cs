using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    private static GameManager instance = null;

    public enum SelectCharact { Null, Death, Pestilence, Famine, War };
    public struct Stats_Character
    {
        public float speed;
        public int attack;
        public int PDV;
        public string specialStage5;
        public string specialA;
        public SelectCharact selectCharact;
    }
    
    private Stats_Character[] struc_stat_character;
    private Stats_Character[] sauvegarde_state;

    private bool dead;

    /* 0 = solo/standard; 1 = duo/standard; 2 = duo/Hardcore; 3 = ...*/
    private Mode typeMode;
    public enum Mode { standardS, standardD, hardcoreD };

    public enum Arena { arena1, arena2, arena3 };
    private Arena typeArena;

    int id_Arena;
    int load_Mode;

    private int nbPlayers;
    [SerializeField]
    private GameObject gameOver;


    private int[] lifePlayers;
    private int[] lifeMax;
    [SerializeField]
    private float lifeBoss;

    [SerializeField]
    private int[] nbHit;
    [SerializeField]
    private int[] nbShoot;
    [SerializeField]
    private int[] damageByBoss;

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

    public void UpdateLife(int playerId, int life)
    {
        lifePlayers[playerId] = life;
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


    public int[] NbHit
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

    public int[] NbShoot
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

    public int[] DamageByBoss
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

    public Stats_Character[] Struc_stat_character
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

    public int[] LifeMax
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

    public int[] LifePlayers
    {
        get
        {
            return lifePlayers;
        }

        set
        {
            lifePlayers = value;
        }
    }

    public Stats_Character[] Sauvegarde_state
    {
        get
        {
            return sauvegarde_state;
        }

        set
        {
            sauvegarde_state = value;
        }
    }

    public Arena TypeArena
    {
        get
        {
            return typeArena;
        }

        set
        {
            typeArena = value;
        }
    }

    public void Creat_struct_Heroes()
    {

        sauvegarde_state = new Stats_Character[4];
        sauvegarde_state[0].attack = 10;
        sauvegarde_state[0].PDV = 100;
        sauvegarde_state[0].speed = 11f;
        sauvegarde_state[0].specialStage5 = "BoomFamine";
        sauvegarde_state[0].specialA = "HorseFamine";
        sauvegarde_state[0].selectCharact = SelectCharact.Famine;

        sauvegarde_state[1].attack = 20;
        sauvegarde_state[1].PDV = 200;
        sauvegarde_state[1].speed = 9f;
        sauvegarde_state[1].specialStage5 = "Boomar";
        sauvegarde_state[1].specialA = "HorseWar";
        sauvegarde_state[1].selectCharact = SelectCharact.War;


        sauvegarde_state[2].attack = 15;
        sauvegarde_state[2].PDV = 150;
        sauvegarde_state[2].speed = 10f;
        sauvegarde_state[2].specialStage5 = "BoomPestilence";
        sauvegarde_state[2].specialA = "HorsePestilence";
        sauvegarde_state[2].selectCharact = SelectCharact.Pestilence;

        sauvegarde_state[3].attack = 25;
        sauvegarde_state[3].PDV = 100;
        sauvegarde_state[3].speed = 12f;
        sauvegarde_state[3].specialStage5 = "BoomDeath";
        sauvegarde_state[3].specialA = "HorseDeath";
        sauvegarde_state[3].selectCharact = SelectCharact.Death;
    }
    public void CreateStrucCharact(int Number_of_controller)
    {
        //Mode Standard
        struc_stat_character = new Stats_Character[Number_of_controller];
        lifeMax = new int[Number_of_controller];
        typeMode = (Mode)Number_of_controller - 1;
        nbPlayers = Number_of_controller;
    }
    /* i = 0 = First Player; i = 1 = Second Player; */
    public void Set_Stat_Player(int _ID_Player, int i)
    {
        struc_stat_character[i] = sauvegarde_state[_ID_Player];
        lifeMax[i] = sauvegarde_state[_ID_Player].PDV;
    }

    public void Set_arena(int Arena)
    {

    }
}