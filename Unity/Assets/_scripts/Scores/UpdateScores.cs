using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using XInputDotNetPure;
using System.IO;

public class UpdateScores : MonoBehaviour
{

    XInputManager XIM;

    public struct SaveGeneral
    {
        public int NbPlayer;
        public float time;
        public string arena;
        public SaveCharacter[] saveCharact;
    }

    public struct SaveCharacter
    {
        public int life;
        public int nbShoot;
        public int nbHit;
        public int damage;
        public int total;
        public Character_Selection.Stats_Character struc_stat_character;
    }


    int scoreBasedTime;

    float[] seconds;
    float[] fraction;
    int[] minutes;
    float[] currentTime;

    float[] currentScore;
    float[] scores;
    int[] scoresFinal;

    int[] lifeTotalScore;
    int[] lifeTotal;
    int[] currentLife;
    float[] lerpLife;
    float[] percentageLife;

    float[] percentageHitShoot;
    float[] percentageHitShootScore;
    int[] displayHitByPlayers;
    int[] displayShootByPlayers;

    float[] lerpDamagePrecision;
    int[] currentDamagePrecision;

    int[] displayDamageByBoss;
    int[] displayDamageByBossScore;

    int cpt = 0;

    float time;

    float scoreRankSS;

    private const int scoreMode0Win = 10000;
    private const int scoreMode1Win = 20000;
    private const int scoreMode2Win = 15000;

    private const int scoreMod0Time = 10000;
    private const int scoreMod1Time = 20000;
    private const int scoreMod2Time = 15000;

    private const int scoreMod0HitPlayers = 50;
    private const int scoreMod1HitPlayers = 50;
    private const int scoreMod2HitPlayers = 25;

    private const int scoreMod0HitBoss = 40;
    private const int scoreMod1HitBoss = 40;
    private const int scoreMod2HitBoss = 20;

    private const int scoreMod0Life = 100;
    private const int scoreMod1Life = 100;
    private const int scoreMod2Life = 150;

    private bool pass = false;

    public Text timeText;
    public Text total;
    public Text life;
    public Text precision;
    public Text damage;

    public int lifeMax;
    public float vitesse = 0.01f;

    public List<GameObject> rank = new List<GameObject>();
    // Use this for initialization
    void Start()
    {
        XIM = XInputManager.Instance;
        displayHitByPlayers = new int[GameManager.Instance.NbPlayers];
        displayShootByPlayers = new int[GameManager.Instance.NbPlayers];
        displayDamageByBoss = new int[GameManager.Instance.NbPlayers];
        percentageHitShoot = new float[GameManager.Instance.NbPlayers];
        percentageLife = new float[GameManager.Instance.NbPlayers];
        lifeTotal = new int[GameManager.Instance.NbPlayers];
        lifeTotalScore = new int[GameManager.Instance.NbPlayers];
        displayDamageByBossScore = new int[GameManager.Instance.NbPlayers];
        scores = new float[GameManager.Instance.NbPlayers];
        currentTime = new float[GameManager.Instance.NbPlayers];
        currentScore = new float[GameManager.Instance.NbPlayers];
        minutes = new int[GameManager.Instance.NbPlayers];
        seconds = new float[GameManager.Instance.NbPlayers];
        fraction = new float[GameManager.Instance.NbPlayers];
        scoresFinal = new int[GameManager.Instance.NbPlayers];
        lerpLife = new float[GameManager.Instance.NbPlayers];
        lerpDamagePrecision = new float[GameManager.Instance.NbPlayers];
        currentLife = new int[GameManager.Instance.NbPlayers];
        percentageHitShootScore = new float[GameManager.Instance.NbPlayers];
        currentDamagePrecision = new int[GameManager.Instance.NbPlayers];

        lifeMax = GameManager.Instance.LifeMax;
        for (int i = 0; i < GameManager.Instance.NbPlayers; i++)
        {
            displayHitByPlayers[i] = GameManager.Instance.NbHit[i];
            displayShootByPlayers[i] = GameManager.Instance.NbShoot[i];
            // displayDamageByBoss[i] = GameManager.Instance.DamageByBoss[i];
            displayDamageByBoss[i] = 40;
            percentageHitShoot[i] = (float)displayHitByPlayers[i] / displayShootByPlayers[i];
            percentageHitShoot[i] = percentageHitShoot[i] * 100;

            // Initialization of scoring conditions
            percentageLife[i] = lifeMax - GameManager.Instance.LifePlayers[i];
            percentageLife[i] = percentageLife[i] / lifeMax * 100;
            Debug.Log(GameManager.Instance.TypeMode);
            switch (GameManager.Instance.TypeMode)
            {
                case 0:
                    scoreRankSS = scoreMode0Win;
                    scoreBasedTime = scoreMod0Time;
                    lifeTotal[i] = lifeMax - GameManager.Instance.LifePlayers[i];
                    lifeTotalScore[i] = lifeTotal[i] * scoreMod0Life;
                    displayDamageByBossScore[i] = displayDamageByBoss[i] * scoreMod0HitBoss;
                    percentageHitShootScore[i] = percentageHitShoot[i] * scoreMod0HitPlayers;
                    break;
                case (GameManager.Mode)1:
                    scoreRankSS = scoreMode1Win;
                    scoreBasedTime = scoreMod1Time;
                    lifeTotal[i] = lifeMax * 2 - (GameManager.Instance.LifePlayers[i] + GameManager.Instance.LifePlayers[i]);
                    lifeTotalScore[i] = lifeTotal[i] * scoreMod1Life;
                    displayDamageByBossScore[i] = displayDamageByBoss[i] * scoreMod1HitBoss;
                    percentageHitShootScore[i] = percentageHitShoot[i] * scoreMod1HitPlayers;
                    break;
                case (GameManager.Mode)2:
                    scoreRankSS = scoreMode2Win;
                    scoreBasedTime = scoreMod2Time;
                    lifeTotal[i] = lifeMax * 2 - (GameManager.Instance.LifePlayers[i] + GameManager.Instance.LifePlayers[i]);
                    lifeTotalScore[i] = lifeTotal[i] * scoreMod2Life;
                    displayDamageByBossScore[i] = displayDamageByBoss[i] * scoreMod2HitBoss;
                    percentageHitShootScore[i] = percentageHitShoot[i] * scoreMod2HitPlayers;
                    break;
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            pass = true;
        }
        // Display score
        for (int i = 0; i < GameManager.Instance.NbPlayers; i++)
        {
            
            switch (cpt)
            {
                case 0:

                    scores[i] = Mathf.Pow(0.99f, GameManager.Instance.Timer % 60 - 1) * scoreBasedTime;
                    time += Time.deltaTime * vitesse;

                    currentTime[i] = Mathf.Lerp(0, GameManager.Instance.Timer, time);
                    currentScore[i] = Mathf.Lerp(0, scores[i], time);
                    Debug.Log(scores[i]);
                    minutes[i] = (int)currentTime[i] / 60;
                    seconds[i] = currentTime[i] % 60;
                    fraction[i] = (currentTime[i] * 100) % 100;
                    if (time > 1 || pass)
                    {
                        minutes[i] = (int)GameManager.Instance.Timer / 60;
                        seconds[i] = GameManager.Instance.Timer % 60;
                        fraction[i] = (GameManager.Instance.Timer * 100) % 100;
                        currentScore[i] = scores[i];
                        pass = false;
                    }
                    scoresFinal[i] = (int)currentScore[i];

                    timeText.text = string.Format("TIME : {0:00} : {1:00} : {2:00}", minutes[i], seconds[i], fraction[i]);
                    total.text = "TOTAL : " + scoresFinal[i].ToString();
                    if (currentScore[i] == scores[i])
                    {
                        cpt = 1;
                        time = 0;
                    }
                    break;
                case 1:

                    time += Time.deltaTime * vitesse;
                    scoresFinal[i] = (int)scores[i] - lifeTotalScore[i];
                    Debug.Log(scoresFinal[i]);
                    currentScore[i] = Mathf.Lerp(scores[i], scoresFinal[i], time);
                    lerpLife[i] = Mathf.Lerp(0, percentageLife[i], time);
                    if (time > 1 || pass)
                    {
                        lerpLife[i] = percentageLife[i];
                        currentScore[i] = scoresFinal[i];
                        pass = false;
                    }
                    currentLife[i] = (int)lerpLife[i];

                    total.text = "TOTAL : " + currentScore[i].ToString();
                    life.text = "LIFE : " + currentLife[i].ToString() + " %";
                    if (currentScore[i] == scoresFinal[i])
                    {
                        cpt = 2;
                        time = 0;
                        scores[i] = scoresFinal[i];
                    }

                    
                    break;

                case 2:

                    time += Time.deltaTime * vitesse;
                    scoresFinal[i] = (int)(percentageHitShootScore[i] + scores[i]);
                    Debug.Log(scoresFinal[i]);

                    currentScore[i] = Mathf.Lerp(scores[i], scoresFinal[i], time);
                    lerpDamagePrecision[i] = Mathf.Lerp(0, percentageHitShoot[i], time);
                    if (time > 1 || pass)
                    {
                        currentScore[i] = scoresFinal[i];
                        lerpDamagePrecision[i] = percentageHitShoot[i];
                        pass = false;
                    }

                    currentDamagePrecision[i] = (int)lerpDamagePrecision[i];

                    total.text = "TOTAL : " + currentScore[i].ToString();
                    precision.text = "PRECISION : " + currentDamagePrecision[i].ToString() + " %";
                    if (currentScore[i] == scoresFinal[i])
                    {
                        
                        cpt = 3;
                        time = 0;
                        scores[i] = scoresFinal[i];

                    }
                  
                    break;
                case 3:

                    time += Time.deltaTime * vitesse;
                    scoresFinal[i] = (int)(scores[i] - displayDamageByBossScore[i]);
                    Debug.Log(scoresFinal[i]);

                    currentScore[i] = Mathf.Lerp(scores[i], scoresFinal[i], time);
                    lerpDamagePrecision[i] = Mathf.Lerp(0, displayDamageByBoss[i], time);
                    if (time > 1 || pass)
                    {
                        currentScore[i] = scoresFinal[i];
                        lerpDamagePrecision[i] = displayDamageByBoss[i];
                        pass = false;
                    }
                    currentDamagePrecision[i] = (int)lerpDamagePrecision[i];
                    total.text = "TOTAL : " + currentScore[i].ToString();
                    damage.text = "DAMAGE : " + currentDamagePrecision[i].ToString();
                    if (currentScore[i] == scoresFinal[i])
                        cpt = 4;

                    break;
                case 4:
                    if (scoresFinal[i] >= scoreRankSS)
                        rank[0].SetActive(true);
                    else if (scoresFinal[i] < scoreRankSS && scoresFinal[i] >= scoreRankSS / 2)
                        rank[1].SetActive(true);
                    else if (scoresFinal[i] < scoreRankSS / 2 && scoresFinal[i] >= scoreRankSS / 3)
                        rank[2].SetActive(true);
                    else
                        rank[3].SetActive(true);
                    if (XIM.CurrState[0].Buttons.A == ButtonState.Pressed)
                    {

                        SaveData();
                        Next();
                    }
                    /* Save */
                    //GameManager.Instance.SaveData(scoresFinal);

                    break;
            }
        }
    }


    public void Next()
    {
        if (cpt == 4)
            SceneManager.LoadScene((int)MenuManager.StateMenu.MainMenu);
    }

    public void SaveData()
    {
        SaveGeneral saveGeneral = new SaveGeneral();
        SaveCharacter[] saveCharact = new SaveCharacter[GameManager.Instance.NbPlayers];

        saveGeneral.NbPlayer = GameManager.Instance.NbPlayers;
        saveGeneral.time = GameManager.Instance.Timer;
        saveGeneral.arena = GameManager.Instance.TypeArena.ToString();

        for (int i = 0; i < GameManager.Instance.NbPlayers; i++)
        {
            saveCharact[i].struc_stat_character = GameManager.Instance.Struc_stat_character[i];
            saveCharact[i].life = (int)percentageLife[i];
            saveCharact[i].nbShoot = displayShootByPlayers[i];
            saveCharact[i].nbHit = displayHitByPlayers[i];
            saveCharact[i].damage = displayDamageByBoss[i];
            saveCharact[i].total = scoresFinal[i];
        }
        saveGeneral.saveCharact = saveCharact;

        StreamWriter file = File.CreateText(Application.dataPath + "/../save.dat");
        string bufferData = JsonUtility.ToJson(saveGeneral);
        file.WriteLine(bufferData);
        file.Close();
    }
}