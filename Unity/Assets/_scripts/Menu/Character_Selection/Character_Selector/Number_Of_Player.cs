using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XInputDotNetPure;
using UnityEngine.UI;

public class Number_Of_Player : MonoBehaviour {

    XInputManager XIM;
    GameManager GM;
    [SerializeField]
    GameObject[] Players;
    [SerializeField]
    GameObject[] character_liste;
    GameObject GO;
    GameObject Plane;
    [SerializeField]
    Transform [] Character_Player_Selector;
    [SerializeField]
    Recup_ID[] Recup_ID_List;
    [SerializeField]
    Camera[] CameraList;
    [SerializeField]
    Material[] Unlit_mater;
    int Indice_Player = 0;
    int Last_Indice_Player = 0;
    int i = 0;
    // Use this for initialization
    void Start () {
        GM = GameManager.Instance;
        GM.Creat_struct_Heroes();
        XIM = XInputManager.Instance;
        character_liste = new GameObject[4];
        Indice_Player = XIM.NumControllers;
        GM.CreateStrucCharact(XIM.NumControllers);
        for(int i = 0; i < 2; i++)
        {
            Recup_ID_List[i].enabled = false;
        }

        New_player();

    }
	
	// Update is called once per frame
	void Update () {

        Indice_Player = XIM.NumControllers;


        if (XIM.ControllersConnected[0] == false)
        {

            CameraList[0].transform.eulerAngles = new Vector3(0.0f, -180.0f, 0.0f);
            Recup_ID_List[0].enabled = false;
        }
        else if (XIM.ControllersConnected[0] == true)
        {

            Recup_ID_List[0].enabled = true;
            CameraList[0].transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
           
        }

        if (XIM.ControllersConnected[1] == false)
        {

            CameraList[1].transform.eulerAngles = new Vector3(0.0f, -180.0f, 0.0f);
            Recup_ID_List[1].enabled = false;
        }
        else if (XIM.ControllersConnected[1] == true)
        {

            Recup_ID_List[1].enabled = true;
            CameraList[1].transform.eulerAngles = new Vector3(0.0f, 0.0f, 0.0f);
        }
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
            for (int j = 0; j < Players.Length; j++)
            {
                //Debug.Log("On est dedans ! :o");
                if (i == 0)
                {
                   
                    GO = Instantiate(Players[j], Character_Player_Selector[0]) as GameObject;
                    Plane = Instantiate(GameObject.CreatePrimitive(PrimitiveType.Plane),GO.transform) as GameObject;
            }

                if (i == 1)
                {
                    GO = Instantiate(Players[j], Character_Player_Selector[1]) as GameObject;
                    Plane = Instantiate(GameObject.CreatePrimitive(PrimitiveType.Plane), GO.transform) as GameObject;
            }

                character_liste[i] = GO;
                if(GO.GetComponentInChildren<SkinnedMeshRenderer>() != null)
            {
                
                GO.GetComponentInChildren<SkinnedMeshRenderer>().material = Unlit_mater[j] ;
            }    
                else if(GO.GetComponentInChildren<MeshRenderer>() != null)
            {

                GO.GetComponentInChildren<MeshRenderer>().material = Unlit_mater[j];
                
            }   
                GO.GetComponent<Rigidbody>().useGravity = false;
                GO.GetComponent<Horsemen>().enabled = false;
                //GO.AddComponent<Character_Selection>();
                GO.transform.eulerAngles = new Vector3(0.0f, 180.0f, 0.0f);
                GO.SetActive(true);

                //Players[i].transform.SetParent(Character_Selector);
                switch (i)
                {
                    case (0):
                        GO.GetComponent<Transform>().position = new Vector3(-1.0f, 4 * j,0.0f);
                        break;
                    case (1):
                        GO.GetComponent<Transform>().position = new Vector3(1.2f, 4 * j, 0.0f);
                        break;
                }
            }
    }
}
