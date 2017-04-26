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
    }
	
	// Update is called once per frame
	void Update () {

        //if (Indice_Player < 2)
        //{
        //    Indice_Player++;
        //}

        Indice_Player = XIM.NumControllers;

<<<<<<< HEAD
=======
   
>>>>>>> master
       // Debug.Log("Indice_Players : " + Indice_Player + "| Last_Indice_Player : " + Last_Indice_Player);
        //if (Indice_Player < Last_Indice_Player)
        //{
        //    Delete_Player();
        //}

	    if(Indice_Player != Last_Indice_Player)
        {
            if(Indice_Player > Last_Indice_Player)
            {
                New_player();
            }
            else if(Indice_Player < Last_Indice_Player)
            {
                Delete_Player();
            }
        }
        Last_Indice_Player = Indice_Player;
    }


    void Delete_Player()
    {
       
        //Destroy(Players[Indice_Player +1]);

    }


   public GameObject [] Character_liste
    {
        get
            {
            return character_liste;
            }
    }
    /*void New_player_test()
    {
        Debug.Log(Controller_Player.NumControllers);
        
           // Debug.Log("On est dedans ! :o");
       
            Instantiate(Players[Indice_Player - 1], Character_Selector);
            Players[Indice_Player-1].SetActive(true);
            //Players[i].transform.SetParent(Character_Selector);
            switch (Indice_Player-1)
            {
                case (0):
                    Players[Indice_Player].transform.position = new Vector3(-1.0f, 1.0f, -7.0f);
                    break;
                case (1):
                    Players[Indice_Player].transform.position = new Vector3(1.2f, 1.0f, -7.0f);
                    break;
            }
    }*/

    void New_player()
    {
            for (int j = 0; j < Players.Length; j++)
            {
                //Debug.Log("On est dedans ! :o");
                if (i == 0)
                {
                    GO = Instantiate(Players[j], Character_Player_Selector[0]) as GameObject;
                }

                if (i == 1)
                {
                    GO = Instantiate(Players[j], Character_Player_Selector[1]) as GameObject;
                }

                character_liste[i] = GO;
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
