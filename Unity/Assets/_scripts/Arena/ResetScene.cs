using UnityEngine;
using System.Collections;

public class ResetScene : MonoBehaviour {

    private GameManager manager;
	// Use this for initialization
	void Start () {
        manager = GameManager.Instance;
        manager.LifePlayer2 = 20;
        manager.LifePlayer1 = 20;
        manager.LifeBoss = 3000;
        manager.Dead = false;
        manager.GameOver = GameObject.FindGameObjectWithTag("GameOver");
        manager.Boss = GameObject.FindGameObjectWithTag("Boss");
        manager.Players = GameObject.FindGameObjectsWithTag("Player");
    }
	
	// Update is called once per frame
	void Update () {
        //lifeBoss = BossManager.Life;
        if (manager.LifePlayer1 <= 0)
        {
            CameraManager.Instance.DeadPlayer1 = true;
        }
        else if (manager.LifePlayer2 <= 0)
        {
            CameraManager.Instance.DeadPlayer2 = true;
        }
        else if (manager.LifeBoss <= 0)
        {
            CameraManager.Instance.DeadBoss = true;
        }

        if (manager.Dead)
        {
            // boss.GetComponent<LilithAI>().LilithAccessor.StopAllCoroutines();
            //boss.GetComponent<LilithAI>().StopAllCoroutines();
            manager.Players[0].GetComponent<Horsemen>().enabled = false;
            //players[1].GetComponent<Player>().enabled = false;
            //players[1].GetComponent<Add_Bullet>().enabled = false;
            manager.GameOver.SetActive(true);
        }
        else
        {
            manager.GameOver.SetActive(false);
        }
    }
}
