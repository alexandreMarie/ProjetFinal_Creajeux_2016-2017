using UnityEngine;
using System.Collections;

public class ResetScene : MonoBehaviour {

    private GameManager manager;

    public GameObject[] prefabs;
    public Vector3[] pos;

    public bool debug = false;
    public int nbPlayers;
    public GameManager.Mode mode;
    void InitPos()
    {
        pos[0] = GameObject.Find("pos2.1").transform.position;
        pos[1] = GameObject.Find("pos2.2").transform.position;
        pos[2] = GameObject.Find("pos1").transform.position;
    }
    void Awake () {
        InitPos();
        manager = GameManager.Instance;
        manager.StartPos = new Vector3[3];
        GameManager.Instance.NbPlayers = nbPlayers;
        manager.LifePlayers = new int[GameManager.Instance.NbPlayers];
        System.Array.Copy(pos, manager.StartPos, pos.Length);
        Character_Selection.SelectCharact selecCharact;

        if (debug)
        {
            GameManager.Instance.TypeMode = mode;
            GameManager.Instance.NbPlayers = nbPlayers;
            manager.Struc_stat_character = new Character_Selection.Stats_Character[nbPlayers];

            for (int i = 0; i < nbPlayers; i++)
            {
                manager.Struc_stat_character[i].attack = 20;
                manager.Struc_stat_character[i].PDV = 100;
                manager.Struc_stat_character[i].speed = 20;
                manager.Struc_stat_character[i].selectCharact = (Character_Selection.SelectCharact)1;

               ;
            }
        }
        for (int i = 0; i<manager.NbPlayers; i++)
        {
            GameObject go;
            selecCharact = manager.Struc_stat_character[i].selectCharact;
            switch(selecCharact)
            {
                case Character_Selection.SelectCharact.Pestilence:
                    go = Instantiate(prefabs[1]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if(i ==1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
                    break;
                case Character_Selection.SelectCharact.Death:
                    go=Instantiate(prefabs[0]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if(i == 1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
                    break;
                case Character_Selection.SelectCharact.Famine:
                    go=Instantiate(prefabs[2]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if (i == 1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
                    break;
                case Character_Selection.SelectCharact.War:
                    go=Instantiate(prefabs[3]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if (i == 1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
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
                    manager.LifePlayers[0] = manager.Struc_stat_character[0].PDV;
                    break;
                case (GameManager.Mode)1:
                    manager.LifePlayers[0] = manager.Struc_stat_character[0].PDV;
                    manager.LifePlayers[1] = manager.Struc_stat_character[1].PDV;
                    break;
            }
        
    }
	
	// Update is called once per frame
	void Update () {
      
        switch(manager.TypeMode)
        {
            case 0:
                if (manager.LifePlayers[0] <= 0)
                {
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                break;
            case (GameManager.Mode)1:
                if (manager.LifePlayers[0] <= 0)
                {
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                else if (manager.LifePlayers[1] <= 0)
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
