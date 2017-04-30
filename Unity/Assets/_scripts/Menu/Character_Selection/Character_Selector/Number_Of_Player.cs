using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XInputDotNetPure;

public class Number_Of_Player : MonoBehaviour {

    XInputManager XIM;
    GameManager GM;
    [SerializeField]
    GameObject[] Players;
    [SerializeField]
    GameObject[] character_liste;
    GameObject GO;
    [SerializeField]
    Transform [] Character_Player_Selector;
    [SerializeField]
    Camera[] CameraListe;
    [SerializeField]
    Recup_ID[] Recup_ID_List;
    [SerializeField]
    Material[] unlit_mater;
    int Indice_Player = 0;
    int Last_Indice_Player = 0;
    [SerializeField]
    bool Debug_clavier;
    [SerializeField]
    bool CameraOn;
    //int i = 0;
    // Use this for initialization
    void Start () {
        GM = GameManager.Instance;
        GM.Creat_struct_Heroes();
        XIM = XInputManager.Instance;
        character_liste = new GameObject[4];
        Indice_Player = XIM.NumControllers;
        GM.CreateStrucCharact(XIM.NumControllers);
        New_player();
    }
	
	// Update is called once per frame
	void Update () {
        if (Debug_clavier == true)
        {
            for (int i = 0; i < 2; i++)
            {
                if (CameraOn == false)
                {
                    CameraListe[i].transform.eulerAngles = new Vector3(0.0f, 180.0f, 0.0f);
                    Recup_ID_List[i].enabled = false;
                }

                else if (CameraOn == true)
                {
                    CameraListe[i].transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
                    Recup_ID_List[i].enabled = true;
                }
            }
        }
        else
        {

            if (XIM.ControllersConnected[0] == false && CameraOn == false)
            {
                CameraListe[0].transform.eulerAngles = new Vector3(0.0f, 180.0f, 0.0f);
                Recup_ID_List[0].enabled = false;
            }

            else if (XIM.ControllersConnected[0] == true || CameraOn == true)
            {
                CameraListe[0].transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
                Recup_ID_List[0].enabled = true;
            }

            if (XIM.ControllersConnected[1] == false && CameraOn == false)
            {
                CameraListe[1].transform.eulerAngles = new Vector3(0.0f, 180.0f, 0.0f);
                Recup_ID_List[1].enabled = false;
            }

            else if (XIM.ControllersConnected[1] == true || CameraOn == true)
            {
                CameraListe[1].transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
                Recup_ID_List[1].enabled = true;
            }
        }

        //if (Indice_Player < 2)
        //{
        //    Indice_Player++;
        //}

        Last_Indice_Player = Indice_Player;
    }



   public GameObject [] Character_liste
    {
        get
            {
            return character_liste;
            }
    }


    void New_player()
    {
        //Debug.Log(Players.Length);
            for(int i = 0; i < Players.Length; i++)  
            {
                GO = Instantiate(Players[i], Character_Player_Selector[0]) as GameObject;
            character_liste[i] = GO;
            if (GO.GetComponentInChildren<SkinnedMeshRenderer>() != null)
            {
                GO.GetComponentInChildren<SkinnedMeshRenderer>().material = unlit_mater[i];
            }

          else if (GO.GetComponentInChildren<MeshRenderer>() != null)
            {
                GO.GetComponentInChildren<MeshRenderer>().material = unlit_mater[i];
            }

                GO.GetComponent<Rigidbody>().useGravity = false;
                GO.GetComponent<Horsemen>().enabled = false;
                GO.transform.eulerAngles = new Vector3(0.0f, 180.0f, 0.0f);
                GO.SetActive(true);
                GO.GetComponent<Transform>().localPosition = new Vector3(0.0f, 4f * i, 1.0f);
               

            }
    }
}
