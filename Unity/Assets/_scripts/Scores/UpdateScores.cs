using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class UpdateScores : MonoBehaviour {
    int scoreBasedTime;

    float seconds;
    float fraction;
    float minutes;
    float currentTime;

    float currentScore;
    float scores;
    float scoresFinal;

    float lifeTotal;
    float currentLife;

    float hitTotal;
    int displayHit;
    float currentHit;
    
    int cpt = 0;

    float time;

    float scoreRankSS;
    
    private const int scoreMode0Win = 10000;
    private const int scoreMode1Win = 20000;
    private const int scoreMode2Win = 15000;

    private const int scoreMod0Time = 10000;
    private const int scoreMod1Time = 20000;
    private const int scoreMod2Time = 15000;

    private const int scoreMod0Hit = 50;
    private const int scoreMod1Hit = 50;
    private const int scoreMod2Hit = 25;

    private const int scoreMod0Life = 100;
    private const int scoreMod1Life = 100;
    private const int scoreMod2Life = 150;

    public Text timeText;
    public Text total;
    public Text life;
    public Text hit;

    public int lifeMax = 20;
    public float vitesse;

    public List<GameObject> rank = new List<GameObject>();
	// Use this for initialization
	void Start () {
    }
	
	// Update is called once per frame
	void Update () {

        displayHit= GameManager.Instance.HitByPlayers;
        // Initialization of scoring conditions
        switch (GameManager.Instance.TypeMode)
        {
            case 0:
                scoreRankSS = scoreMode0Win;
                scoreBasedTime = scoreMod0Time;
                lifeTotal = (lifeMax - GameManager.Instance.LifePlayer1) * scoreMod0Life;
                hitTotal = displayHit * scoreMod0Hit;
                break;
            case 1:
                scoreRankSS = scoreMode1Win;
                scoreBasedTime = scoreMod1Time;
                lifeTotal = (lifeMax - GameManager.Instance.LifePlayer1 - GameManager.Instance.LifePlayer2) * scoreMod1Life;
                hitTotal = displayHit * scoreMod1Hit;
                break;
            case 2:
                scoreRankSS = scoreMode2Win;
                scoreBasedTime = scoreMod2Time;
                lifeTotal = (lifeMax - GameManager.Instance.LifePlayer1 - GameManager.Instance.LifePlayer2) * scoreMod2Life;
                hitTotal = displayHit * scoreMod2Hit;
                break;
        }

        // Display score
        switch (cpt)
        {
            case 0:
                scores =Mathf.Pow(0.99f, GameManager.Instance.Timer % 60 - 1) * scoreBasedTime;
                time += Time.deltaTime * vitesse;

                currentTime = Mathf.Lerp(0, GameManager.Instance.Timer, time);
                currentScore = Mathf.Lerp(0, scores, time);
                minutes = currentTime / 60;
                seconds = currentTime % 60;
                fraction = (currentTime * 100) % 100;
                if(time > 1)
                {
                    minutes = GameManager.Instance.Timer / 60;
                    seconds = GameManager.Instance.Timer % 60;
                    fraction = (GameManager.Instance.Timer * 100) % 100;
                    currentScore = scores;
                }
                timeText.text = string.Format("TIME : {0:00} : {1:00} : {2:00}", minutes, seconds, fraction);
                total.text = "TOTAL : " + currentScore.ToString();
                if(currentScore == scores)
                {
                    cpt = 1;
                    time = 0;
                }
                break;
            case 1:
                time += Time.deltaTime * vitesse;
                scoresFinal = scores - lifeTotal;

                currentScore = Mathf.Lerp(scores, scoresFinal, time);
                currentLife = Mathf.Lerp(0, lifeTotal, time);
                if(time>1)
                {
                    currentLife = lifeTotal;
                    currentScore = scoresFinal;
                }
                total.text = "TOTAL : " + currentScore.ToString();
                life.text = "LIFE : " + currentLife.ToString();
                if(currentScore == scoresFinal)
                {
                    cpt = 2;
                    time = 0;
                    scores = scoresFinal;
                }
                break;

            case 2:
                time += Time.deltaTime * vitesse;
                scoresFinal = hitTotal + scores;

                currentScore = Mathf.Lerp(scores, scoresFinal, time);
                currentHit = Mathf.Lerp(0, hitTotal, time);
                if(time>1)
                {
                    currentScore = scoresFinal;
                    currentHit = hitTotal;
                }
                total.text = "TOTAL : " + currentScore.ToString();
                hit.text = "HIT : " + displayHit.ToString();
                if(currentScore == scoresFinal)
                {
                    cpt = 3;
                    time = 0;
                }
                break;

            case 3:
                    if (scoresFinal >= scoreRankSS)
                    {
                        rank[0].SetActive(true);
                        Debug.Log("yolo");
                    }
                    else if (scoresFinal < scoreRankSS && scoresFinal >= scoreRankSS / 2)
                        rank[1].SetActive(true);
                    else if (scoresFinal < scoreRankSS / 2 && scoresFinal >= scoreRankSS / 3)
                        rank[2].SetActive(true);
                    else
                        rank[3].SetActive(true);
                break;
        }
	}

    public void Next()
    {
        SceneManager.LoadScene((int)MenuManager.StateMenu.MainMenu);
    }
}
