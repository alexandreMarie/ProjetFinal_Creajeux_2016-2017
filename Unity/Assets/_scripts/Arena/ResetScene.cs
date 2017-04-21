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
            GameObject go;
            selecCharact = manager.Struc_stat_character[i].selectCharact;
            switch(selecCharact)
            {
                case Character_Selection.SelectCharact.Pestilence:
                    go = Instantiate(prefabs[1]);
                    go.GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0].transform.position;
                    else if(i ==1)
                        go.transform.position = pos[1].transform.position;
                    else
                        go.transform.position = pos[2].transform.position;
                    break;
                case Character_Selection.SelectCharact.Death:
                    go=Instantiate(prefabs[0]);
                    go.GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0].transform.position;
                    else if(i == 1)
                        go.transform.position = pos[1].transform.position;
                    else
                        go.transform.position = pos[2].transform.position;
                    break;
                case Character_Selection.SelectCharact.Famine:
                    go=Instantiate(prefabs[2]);
                    go.GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0].transform.position;
                    else if (i == 1)
                        go.transform.position = pos[1].transform.position;
                    else
                        go.transform.position = pos[2].transform.position;
                    break;
                case Character_Selection.SelectCharact.War:
                    go=Instantiate(prefabs[3]);
                    go.GetComponent<Horsemen>().playerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0].transform.position;
                    else if (i == 1)
                        go.transform.position = pos[1].transform.position;
                    else
                        go.transform.position = pos[2].transform.position;
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
            
            manager.GameOver.SetActive(true);
        }
       else
        {
            manager.GameOver.SetActive(false);
        }
    }
}
