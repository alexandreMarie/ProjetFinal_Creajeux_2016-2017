using UnityEngine;
using System.Collections;

public class ResetScene : MonoBehaviour {

    private GameManager manager;

    public GameObject[] prefabs;
    public GameObject[] pos;
	void Awake () {
       
        manager = GameManager.Instance;
        Character_Selection.SelectCharact selecCharact;
        manager.Struc_stat_character = new Character_Selection.Stats_Character[2];
        manager.Struc_stat_character[1].attack = 20;
        manager.Struc_stat_character[1].PDV = 20;
        manager.Struc_stat_character[1].speed = 20;
        manager.Struc_stat_character[1].selectCharact = (Character_Selection.SelectCharact)1;

        manager.Struc_stat_character[0].attack = 20;
        manager.Struc_stat_character[0].PDV = 15;
        manager.Struc_stat_character[0].speed = 20;
        manager.Struc_stat_character[0].selectCharact = (Character_Selection.SelectCharact)4;
        for (int i = 0; i<manager.NbPlayers; i++)
        {
            selecCharact = manager.Struc_stat_character[i].selectCharact;
            switch(selecCharact)
            {
                case Character_Selection.SelectCharact.Pestilence:
                    Instantiate(prefabs[1]);
                    if (i == 0)
                        prefabs[1].transform.position = pos[0].transform.position;
                    else
                        prefabs[1].transform.position = pos[1].transform.position;
                    
                    break;
                case Character_Selection.SelectCharact.Death:
                    Instantiate(prefabs[0]);
                    if (i == 0)
                        prefabs[0].transform.position = pos[0].transform.position;
                    else
                        prefabs[0].transform.position = pos[1].transform.position;
                    break;
                case Character_Selection.SelectCharact.Famine:
                    Instantiate(prefabs[2]);
                    if (i == 0)
                        prefabs[2].transform.position = pos[0].transform.position;
                    else
                        prefabs[2].transform.position = pos[1].transform.position;
                    break;
                case Character_Selection.SelectCharact.War:
                    Instantiate(prefabs[3]);
                    if (i == 0)
                        prefabs[3].transform.position = pos[0].transform.position;
                    else
                        prefabs[3].transform.position = pos[1].transform.position;
                    break;
            }
        }
        manager.LifeBoss = 3000;
        manager.Dead = false;
        manager.GameOver = GameObject.FindGameObjectWithTag("GameOver");
        manager.Boss = GameObject.FindGameObjectWithTag("Boss");
        manager.Players = GameObject.FindGameObjectsWithTag("Player");

        switch (manager.TypeMode)
        {
            case 0:
                manager.LifePlayer1 = manager.Struc_stat_character[0].PDV;
                break;
            case 1:
                manager.LifePlayer1 = manager.Struc_stat_character[0].PDV;
                manager.LifePlayer2 = manager.Struc_stat_character[1].PDV;
                break;
        }
    }
	
	// Update is called once per frame
	void Update () {
        manager.LifeBoss = BossManager.Life;
        switch(manager.TypeMode)
        {
            case 0:
                if (manager.LifePlayer1 <= 0)
                {
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                break;
            case 1:
                if (manager.LifePlayer1 <= 0)
                {
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                else if (manager.LifePlayer2 <= 0)
                {
                    CameraManager.Instance.DeadPlayer2 = true;
                }
                break;
        }
        if (manager.LifeBoss <= 0)
        {
            CameraManager.Instance.DeadBoss = true;
        }

        if (manager.Dead)
        {
            // boss.GetComponent<LilithAI>().LilithAccessor.StopAllCoroutines();
            //boss.GetComponent<LilithAI>().StopAllCoroutines();
            for (int i = 0; i<manager.NbPlayers; i++)
            {
                manager.Players[i].GetComponent<Horsemen>().enabled = false;
            }
            manager.GameOver.SetActive(true);
        }
       else
        {
            manager.GameOver.SetActive(false);
        }
    }
}
