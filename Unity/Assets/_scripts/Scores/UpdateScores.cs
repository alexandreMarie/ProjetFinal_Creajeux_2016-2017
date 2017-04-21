using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using XInputDotNetPure;

public class UpdateScores : MonoBehaviour {

    XInputManager XIM;

    int scoreBasedTime;

    float seconds;
    float fraction;
    int minutes;
    float currentTime;

    float currentScore;
    float scores;
    int scoresFinal;

    int lifeTotalScore;
    int lifeTotal;
    int currentLife;
    float lerpLife;
    float percentageLife;

    float percentageHitShoot;
    float percentageHitShootScore;
    int displayHitByPlayers;
    int displayShootByPlayers;

    float lerpDamagePrecision;
    int currentDamagePrecision;

    int displayDamageByBoss;
    int displayDamageByBossScore;

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
	void Start () {
        XIM = XInputManager.Instance;

        lifeMax = GameManager.Instance.LifeMax;

        displayHitByPlayers = GameManager.Instance.NbHit;
        displayShootByPlayers = GameManager.Instance.NbShoot;
        displayDamageByBoss = GameManager.Instance.DamageByBoss;
        percentageHitShoot = displayHitByPlayers - displayShootByPlayers;
        percentageHitShoot = percentageHitShoot / displayHitByPlayers * 100;

        // Initialization of scoring conditions
        switch (GameManager.Instance.TypeMode)
        {
            case 0:
                scoreRankSS = scoreMode0Win;
                scoreBasedTime = scoreMod0Time;
                lifeTotal = lifeMax - GameManager.Instance.LifePlayer1;
                lifeTotalScore = lifeTotal * scoreMod0Life;
                percentageLife = (lifeMax - GameManager.Instance.LifePlayer1);
                percentageLife = percentageLife / lifeMax * 100;
                percentageHitShootScore = percentageHitShoot * scoreMod0HitPlayers;
                displayDamageByBossScore = displayDamageByBoss * scoreMod0HitBoss;
                break;
            case (GameManager.Mode)1:
                scoreRankSS = scoreMode1Win;
                scoreBasedTime = scoreMod1Time;
                lifeTotal = lifeMax * 2 - (GameManager.Instance.LifePlayer1 + GameManager.Instance.LifePlayer2);
                lifeTotalScore = lifeTotal * scoreMod1Life;
                percentageLife = (lifeMax * 2 - GameManager.Instance.LifePlayer1 - GameManager.Instance.LifePlayer2);
                percentageLife = percentageLife / (lifeMax * 2)*100;
                percentageHitShootScore = percentageHitShoot * scoreMod1HitPlayers;
                displayDamageByBossScore = displayDamageByBoss * scoreMod1HitBoss;
                Debug.Log(percentageLife);
                break;
            case (GameManager.Mode)2:
                scoreRankSS = scoreMode2Win;
                scoreBasedTime = scoreMod2Time;
                lifeTotal = lifeMax * 2 - (GameManager.Instance.LifePlayer1 + GameManager.Instance.LifePlayer2);
                lifeTotalScore = lifeTotal * scoreMod2Life;
                percentageLife = (lifeMax * 2 - GameManager.Instance.LifePlayer1 - GameManager.Instance.LifePlayer2);
                percentageLife = percentageLife / (lifeMax * 2) * 100;
                percentageHitShootScore = percentageHitShoot * scoreMod2HitPlayers;
                displayDamageByBossScore = displayDamageByBoss * scoreMod2HitBoss;
                break;
        }
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            pass = true;
        }
        // Display score
        switch (cpt)
        {
            case 0:
               
                scores =Mathf.Pow(0.99f, GameManager.Instance.Timer % 60 - 1) * scoreBasedTime;
                time += Time.deltaTime * vitesse;

                currentTime = Mathf.Lerp(0, GameManager.Instance.Timer, time);
                currentScore = Mathf.Lerp(0, scores, time);
                minutes = (int)currentTime / 60;
                seconds = currentTime % 60;
                fraction = (currentTime * 100) % 100;
                if(time > 1 || pass)
                {
                    minutes = (int)GameManager.Instance.Timer / 60;
                    seconds = GameManager.Instance.Timer % 60;
                    fraction = (GameManager.Instance.Timer * 100) % 100;
                    currentScore = scores;
                    pass = false;
                }
                Debug.Log(minutes);
                scoresFinal = (int)currentScore;
               
                timeText.text = string.Format("TIME : {0:00} : {1:00} : {2:00}", minutes, seconds, fraction);
                total.text = "TOTAL : " + scoresFinal.ToString();
                if(currentScore == scores)
                {
                    cpt = 1;
                    time = 0;
                }
                break;
            case 1:
               
                time += Time.deltaTime * vitesse;
                scoresFinal = (int)scores - lifeTotalScore;

                currentScore = Mathf.Lerp(scores, scoresFinal, time);
                lerpLife = Mathf.Lerp(0, percentageLife, time);
                if(time>1 || pass)
                {
                    lerpLife = percentageLife;
                    currentScore = scoresFinal;
                    pass = false;
                }
                currentLife = (int)lerpLife;
                
                total.text = "TOTAL : " + currentScore.ToString();
                life.text = "LIFE : " + currentLife.ToString() + " %";
                if(currentScore == scoresFinal)
                {
                    cpt = 2;
                    time = 0;
                    scores = scoresFinal;
                }
                break;

            case 2:
              
                time += Time.deltaTime * vitesse;
                scoresFinal = (int)(percentageHitShootScore + scores);

                currentScore = Mathf.Lerp(scores, scoresFinal, time);
                lerpDamagePrecision = Mathf.Lerp(0, percentageHitShoot, time);
                if(time>1 || pass)
                {
                    currentScore = scoresFinal;
                    lerpDamagePrecision = percentageHitShoot;
                    pass = false;
                }
                currentDamagePrecision = (int)lerpDamagePrecision;
                
                total.text = "TOTAL : " + currentScore.ToString();
                precision.text = "PRECISION : " + currentDamagePrecision.ToString() + " %";
                if(currentScore == scoresFinal)
                {
                    cpt = 3;
                    time = 0;
                    scores = scoresFinal;

                }
                break;
            case 3:
               
                time += Time.deltaTime * vitesse;
                scoresFinal = (int)(scores - displayDamageByBossScore);

                currentScore = Mathf.Lerp(scores, scoresFinal, time);
                lerpDamagePrecision = Mathf.Lerp(0, displayDamageByBoss, time);
                if(time>1 || pass)
                {
                    currentScore = scoresFinal;
                    lerpDamagePrecision = displayDamageByBoss;
                    pass = false;
                }
                currentDamagePrecision = (int)lerpDamagePrecision;
                total.text = "TOTAL : " + currentScore.ToString();
                damage.text = "DAMAGE : " + currentDamagePrecision.ToString();
                if(currentScore == scoresFinal)
                    cpt = 4;
                
                break;
            case 4:
                    if (scoresFinal >= scoreRankSS)
                        rank[0].SetActive(true);
                    else if (scoresFinal < scoreRankSS && scoresFinal >= scoreRankSS / 2)
                        rank[1].SetActive(true);
                    else if (scoresFinal < scoreRankSS / 2 && scoresFinal >= scoreRankSS / 3)
                        rank[2].SetActive(true);
                    else
                        rank[3].SetActive(true);
                    if(XIM.CurrState[0].Buttons.A == ButtonState.Pressed)
                {
                    Next();
                }
                    /* Save */
                //GameManager.Instance.SaveData(scoresFinal);

                break;
        }
    }


    public void Next()
    {
        if(cpt == 4)
            SceneManager.LoadScene((int)MenuManager.StateMenu.MainMenu);
    }
}
