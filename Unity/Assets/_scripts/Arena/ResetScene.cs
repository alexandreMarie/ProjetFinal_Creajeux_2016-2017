using UnityEngine;
using System.Collections;

public class ResetScene : MonoBehaviour
{

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
    void Awake()
    {
        InitPos();
        manager = GameManager.Instance;
        manager.StartPos = new Vector3[3];

        CameraManager.Instance.DeadFirst = -1;
        
        System.Array.Copy(pos, manager.StartPos, pos.Length);
        GameManager.SelectCharact selecCharact;

        if (debug)
        {
            manager.NbPlayers = nbPlayers;
            manager.TypeMode = mode;
            manager.Struc_stat_character = new GameManager.Stats_Character[nbPlayers];
            manager.Creat_struct_Heroes();
            manager.LifeMax = new int[nbPlayers];
            for (int i = 0; i < nbPlayers; i++)
            {
                manager.Struc_stat_character[i].attack =10;
                manager.Struc_stat_character[i].PDV = 100;
                manager.Struc_stat_character[i].speed = 11f;
                manager.Struc_stat_character[i].selectCharact = GameManager.SelectCharact.Famine;

                manager.LifeMax[i] = manager.Struc_stat_character[i].PDV;
            }
        }

        manager.LifePlayers = new int[GameManager.Instance.NbPlayers];
        manager.DamageByBoss = new int[GameManager.Instance.NbPlayers];

        for (int i = 0; i < manager.NbPlayers; i++)
        {
            GameObject go;
            selecCharact = manager.Struc_stat_character[i].selectCharact;
            manager.DamageByBoss[i] = 0;
            switch (selecCharact)
            {
                case GameManager.SelectCharact.Pestilence:
                    go = Instantiate(prefabs[1]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if (i == 1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
                    break;
                case GameManager.SelectCharact.Death:
                    go = Instantiate(prefabs[0]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if (i == 1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
                    break;
                case GameManager.SelectCharact.Famine:
                    go = Instantiate(prefabs[2]);
                    go.GetComponent<Horsemen>().PlayerID = i;
                    if (i == 0 && manager.TypeMode == (GameManager.Mode)1)
                        go.transform.position = pos[0];
                    else if (i == 1)
                        go.transform.position = pos[1];
                    else
                        go.transform.position = pos[2];
                    break;
                case GameManager.SelectCharact.War:
                    go = Instantiate(prefabs[3]);
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
    void Update()
    {
        switch (manager.TypeMode)
        {
            case GameManager.Mode.standardS:
                if (manager.LifePlayers[0] <= 0)
                {
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                break;
            case GameManager.Mode.standardD:
                if (manager.LifePlayers[0] <= 0)
                {
                    if (manager.LifePlayers[1] > 0)
                        CameraManager.Instance.DeadFirst = 0;
                    
                    CameraManager.Instance.DeadPlayer1 = true;
                }
                else if (manager.LifePlayers[1] <= 0)
                {
                    if (manager.LifePlayers[0] > 0)
                        CameraManager.Instance.DeadFirst = 1;
                    CameraManager.Instance.DeadPlayer2 = true;
                }
                break;
            case GameManager.Mode.hardcoreD:
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
