using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using XInputDotNetPure;

public class Number_Of_Player : MonoBehaviour {

    XInputManager Controller_Player;
    [SerializeField]
    GameObject[] Players;
    [SerializeField]
    GameObject[,] character_liste;

    [SerializeField]
    Transform Character_Selector;

    int Indice_Player = 0;
    int Last_Indice_Player = 0;
    int i = 0;
    // Use this for initialization
    void Start () {
        Controller_Player = XInputManager.Instance;
        character_liste = new GameObject[2, 4];
        Indice_Player = Controller_Player.NumControllers;
        if (Indice_Player < Controller_Player.NumControllers);

    }
	
	// Update is called once per frame
	void Update () {

        Indice_Player = Controller_Player.NumControllers;
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
        Debug.Log("Supression de l'objet");
        //Destroy(Players[Indice_Player +1]);

    }


   public GameObject [,] Character_liste
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
        for (i = i; i < Indice_Player; i++)
        {
            for (int j = 0; j < Players.Length; j++)
            {
                //Debug.Log("On est dedans ! :o");
                GameObject GO = Instantiate(Players[j],Character_Selector)as GameObject;
                character_liste[i, j] = Players[j];
                GO.GetComponent<Rigidbody>().useGravity = false;
                GO.GetComponent<Horsemen>().enabled = false;
                GO.AddComponent<Character_Selection>();
                GO.transform.eulerAngles = new Vector3(0.0f, 180.0f, 0.0f);
                GO.GetComponent<Character_Selection>().PlayerIndex = (PlayerIndex)i;
                GO.GetComponent<Character_Selection>().id_player = j;
                GO.SetActive(true);

                //Players[i].transform.SetParent(Character_Selector);
                switch (i)
                {
                    case (0):
                        GO.GetComponent<Transform>().position = new Vector3(-1.0f, 1.2f, -7.0f);
                        break;
                    case (1):
                        GO.GetComponent<Transform>().transform.position = new Vector3(1.2f, 1.2f, -7.0f);
                        break;
                }
            }
        }

    }
}
