using UnityEngine;
using System.Collections;

public class ResetScene : MonoBehaviour {

    private GameManager manager;

    public GameObject[] prefabs;
    public GameObject[] pos;
	void Awake () {
       
        manager = GameManager.Instance;
        Character_Selection.SelectCharact selecCharact;
       /* manager.Struc_stat_character = new Character_Selection.Stats_Character[2];
        manager.Struc_stat_character[1].attack = 20;
        manager.Struc_stat_character[1].PDV = 100;
        manager.Struc_stat_character[1].speed = 20;
        manager.Struc_stat_character[1].selectCharact = (Character_Selection.SelectCharact)1;

        manager.Struc_stat_character[0].attack = 20;
        manager.Struc_stat_character[0].PDV = 100;
        manager.Struc_stat_character[0].speed = 20;
        manager.Struc_stat_character[0].selectCharact = (Character_Selection.SelectCharact)4;*/
        for (int i = 0; i<manager.NbPlayers; i++)
        {
            selecCharact = manager.Struc_stat_character[i].selectCharact;
            switch(selecCharact)
            {
                case Character_Selection.SelectCharact.Pestilence:
                    Instantiate(prefabs[1]);
                    prefabs[1].GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        prefabs[1].transform.position = pos[0].transform.position;
                    else if(i ==1)
                        prefabs[1].transform.position = pos[1].transform.position;
                    else
                        prefabs[1].transform.position = pos[2].transform.position;
                    break;
                case Character_Selection.SelectCharact.Death:
                    Instantiate(prefabs[0]);
                    prefabs[0].GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        prefabs[0].transform.position = pos[0].transform.position;
                    else if(i == 1)
                        prefabs[0].transform.position = pos[1].transform.position;
                    else
                        prefabs[0].transform.position = pos[2].transform.position;
                    break;
                case Character_Selection.SelectCharact.Famine:
                    Instantiate(prefabs[2]);
                    prefabs[2].GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        prefabs[2].transform.position = pos[0].transform.position;
                    else if (i == 1)
                        prefabs[2].transform.position = pos[1].transform.position;
                    else
                        prefabs[2].transform.position = pos[2].transform.position;
                    break;
                case Character_Selection.SelectCharact.War:
                    Instantiate(prefabs[3]);
                    prefabs[3].GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        prefabs[3].transform.position = pos[0].transform.position;
                    else if (i == 1)
                        prefabs[3].transform.position = pos[1].transform.position;
                    else
                        prefabs[3].transform.position = pos[2].transform.position;
                    break;
            }
        }
        manager.Dead = false;
        manager.GameOver = GameObject.FindGameObjectWithTag("GameOver");
        manager.Boss = GameObject.FindGameObjectWithTag("Boss");
        manager.Players = GameObject.FindGameObjectsWithTag("Player");

        switch (manager.TypeMode)
        {
            case 0:
                manager.LifePlayer1 = manager.Struc_stat_character[0].PDV;
                break;
            case (GameManager.Mode)1:
                manager.LifePlayer1 = manager.Struc_stat_character[0].PDV;
                manager.LifePlayer2 = manager.Struc_stat_character[1].PDV;
                break;
        }
    }
	
	// Update is called once per frame
	void Update () {
      
        switch(manager.TypeMode)
        {
            case 0:
                if (manager.LifePlayer1 <= 0)
                {
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                break;
            case (GameManager.Mode)1:
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
            manager.Boss.GetComponent<LilithAI>().LilithAccessor.StopAllCoroutines();
            manager.Boss.GetComponent<LilithAI>().StopAllCoroutines();
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
