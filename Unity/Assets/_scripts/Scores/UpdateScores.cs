using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class UpdateScores : MonoBehaviour {

    float seconds;
    float fraction;
    float minutes;
    float scoresTotal;
    int cpt = 0;

    private float currentTime;
    public Text time;
    public Text total;
	// Use this for initialization
	void Start () {
    }
	
	// Update is called once per frame
	void Update () {
	
        switch(cpt)
        {
            case 0:
                scoresTotal =Mathf.Pow(0.99f, GameManager.Instance.Compteur % 60-1)* 10000;
                Debug.Log(GameManager.Instance.Compteur % 60 - 1);
                currentTime += Time.deltaTime * 2;
                if (currentTime < GameManager.Instance.Compteur)
                {
                    minutes = currentTime / 60;
                    seconds = currentTime % 60;
                    fraction = (currentTime * 100) % 100;
                    time.text = string.Format("TIME : {0:00} : {1:00} : {2:00}", minutes, seconds, fraction);
                    total.text = "TOTAL : " + scoresTotal.ToString();
                }
                break;
            case 1:
                break;
            case 2:
                break;
        }
	}
}
